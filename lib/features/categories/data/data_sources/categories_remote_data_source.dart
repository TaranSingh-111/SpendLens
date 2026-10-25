import 'package:dio/dio.dart';
import 'package:spend_lens/features/categories/data/models/category_model.dart';

class CategoriesRemoteDataSource {
  final Dio _dio;

  CategoriesRemoteDataSource(this._dio);

  Future<List<CategoryModel>> getCategories() => _guard(() async{
    final res = await _dio.get("/categories");

    final List<dynamic> data= res.data;

    return data.map((json) {
      return CategoryModel.fromJson(Map<String, dynamic>.from(json as Map));
    }).toList();
  });



  Future<T> _guard<T>(Future<T> Function() call) async{
    try{
      return await call();
    }on DioException catch(e){
      final data = e.response?.data;
      String? message;

      if(data is Map){
        message = data['message']?.toString() ?? data['error']?.toString();
      }else if(data is String && data.isNotEmpty){
        message = data;
      }

      if(message == null || message.isEmpty){
        if(e.response?.statusCode == 403){
          message = 'You do not have the permission to perform this action';
        }else if(e.response == null){
          message = 'Unable to connect to the server';
        }else{
          message = 'Something went wrong. Please try again.';
        }
      }
      throw CategoriesException(message, statusCode: e.response?.statusCode);
    }
  }
}

class CategoriesException implements Exception{
  CategoriesException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
  @override
  String toString() => message;
}