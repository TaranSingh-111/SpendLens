
import 'package:dio/dio.dart';
import 'package:spend_lens/features/auth/data/models/login_response.dart';


class AuthException implements Exception{
  AuthException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
  @override
  String toString() => message;
}

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._dio);
  final Dio _dio;

  Future<LoginResponse> login(String email, String password) => _guard(()async{
    final res = await _dio.post('/auth/login',
        data: {'email': email, 'password': password});

    return LoginResponse.fromJson(Map<String, dynamic>.from(res.data as Map));
  });


  Future<void> register(String email, String password, String name) => _guard(() async {
     await _dio.post('/auth/register',
        data: {'name': name, 'email': email, 'password': password});
  });


  Future<LoginResponse> refresh(String refreshToken) => _guard(() async{
    final res = await _dio.post('/auth/refresh',
        data: {'refreshToken': refreshToken});
    return LoginResponse.fromJson(Map<String, dynamic>.from(res.data as Map));
  });

  Future<void> logout(String refreshToken) => _guard(() async{
    await _dio.post('/auth/logout',
          data: {'refreshToken': refreshToken});
  });

  Future<T> _guard<T>(Future<T> Function() call) async{
    try{
      return await call();
    }on DioException catch(e) {
      final data = e.response?.data;
      String? message;

      if(data is Map){
        message = data['message']?.toString() ?? data['error']?.toString();
      }else if(data is String && data.isNotEmpty){
        message = data;
      }

      if(message == null || message.isEmpty){
        if(e.response?.statusCode == 401){
          message = 'Invalid email or password.';
        }else if(e.response?.statusCode == 403){
          message = 'You do not have the permission to perform this action';
        }else if(e.response == null){
          message = 'Unable to connect to the server';
        }else{
          message = 'Something went wrong. Please try again.';
        }
      }
      throw AuthException(message, statusCode: e.response?.statusCode);
    }
  }
}