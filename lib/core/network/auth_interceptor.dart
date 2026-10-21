import 'dart:math';

import 'package:dio/dio.dart';
import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/services/token_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenStorage _token;
  final AuthRemoteDataSource _dataSource;

  AuthInterceptor({required this._dio, required this._token, required this._dataSource});

  Future<void>? _refreshFuture;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final isAuthEndPoint = options.path.startsWith('/auth/');

    if(!isAuthEndPoint){
      try{
        final token = await _token.readAccess();
        if(token != null){
          options.headers['Authorization'] = 'Bearer $token';
        }
      }catch(e){
        handler.reject(DioException(requestOptions: options, error: e));
        return;
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async{
    final request = err.requestOptions;

    final isUnauthorized = err.response?.statusCode == 401;
    final alreadyRetried = request.extra['retried'] == true;
    final isAuthEndpoint = request.path.startsWith('/auth/');

    if (!isUnauthorized || alreadyRetried || isAuthEndpoint) {
      handler.next(err);
      return;
    }

    try{
      await _refreshAccessToken();
      final accessToken = await _token.readAccess();

      if(accessToken == null){
        handler.next(err);
        return;
      }

      request.headers['Authorization'] = 'Bearer $accessToken';
      request.extra['retried'] = true;

      final response = await _dio.fetch<dynamic>(request);
      handler.resolve(response);
    }catch (e){
      handler.next(err);
    }
  }

  Future<void> _refreshAccessToken() async{
    final existingRefresh = _refreshFuture;

    if(existingRefresh != null){
      await existingRefresh;
      return;
    }

    final future = _performRefresh();
    _refreshFuture = future;

    try{
      await future;
    }finally{
      _refreshFuture = null;
    }
  }

  Future<void> _performRefresh() async{
    final refreshToken = await _token.readRefresh();

    if(refreshToken == null){
      await _token.clear();
      throw StateError('No refresh token available');
    }
    try{
      final response = await _dataSource.refresh(refreshToken);

      await _token.save(
        access: response.accessToken,
        refresh: response.refreshToken
      );
    }catch(e){
      await _token.clear();
      rethrow;
    }
  }
}