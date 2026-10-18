import 'package:dio/dio.dart';
import 'package:spend_lens/features/auth/data/models/login_response.dart';
import 'package:spend_lens/features/auth/data/models/register_response.dart';

import '../../domain/entities/user.dart';

class AuthException implements Exception{
  AuthException(this.message);
  final String message;
  @override
  String toString() => message;
}

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._dio);
  final Dio _dio;

  Future<LoginResponse> login(String email, String password) => _guard(()async{
    final res = await _dio.post('/auth/login',
        data: {'email': email, 'password': password});

    return LoginResponse.fromJson(res.data);
  });

  Future<RegisterResponse> register(String name, String email, String password) => _guard(()async{
    final res = await _dio.post('/auth/register',
        data: {'name': name, 'email': email, 'password': password});

    return RegisterResponse.fromJson(res.data);
  });

  Future<User> me() => _guard(() async{
    final res = await _dio.get('/auth/me');
    return User.fromJson(res.data);
  });

  Future<T> _guard<T>(Future<T> Function() call) async{
    try{
      return await call();
    }on DioException catch(e){
      final data = e.response?.data;
      final message = (data is Map ? data['message'] : null) as String?;
      throw AuthException(message ?? 'Something went wrong. Please try again.');
    }
  }
}