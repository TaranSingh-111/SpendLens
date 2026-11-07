import 'package:dio/dio.dart';
import 'package:spend_lens/features/budget/data/models/budget_model.dart';

class BudgetRemoteDataSource {
  final Dio _dio;

  BudgetRemoteDataSource(this._dio);

  Future<BudgetModel> getBudget(int year, int month) => _guard(() async{

    final res = await _dio.get(
      '/budgets',
      queryParameters: {'year': year, 'month': month}
    );

    return BudgetModel.fromJson(res.data);
  });

  Future<BudgetModel> saveBudget(double amount) => _guard(() async{
    final res = await _dio.put(
        '/budgets/current',
        data: {'amount': amount},
    );

    return BudgetModel.fromJson(res.data);
  });


  Future<T> _guard<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on DioException catch (e) {
      final data = e.response?.data;
      String? message;

      if (data is Map) {
        message = data['message']?.toString() ?? data['error']?.toString();
      } else if (data is String && data.isNotEmpty) {
        message = data;
      }

      if (message == null || message.isEmpty) {
        if (e.response?.statusCode == 403) {
          message = 'You do not have the permission to perform this action';
        } else if (e.response == null) {
          message = 'Unable to connect to the server';
        } else {
          message = 'Something went wrong. Please try again.';
        }
      }
      throw BudgetException(message, statusCode: e.response?.statusCode);
    }
  }
}

class BudgetException implements Exception{
  BudgetException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
  @override
  String toString() => message;
}
