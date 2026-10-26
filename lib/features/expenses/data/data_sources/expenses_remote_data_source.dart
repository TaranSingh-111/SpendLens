import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:spend_lens/features/expenses/data/models/expense_model.dart';

class ExpensesRemoteDataSource {
  final Dio _dio;

  ExpensesRemoteDataSource(this._dio);

  Future<List<ExpenseModel>> getAllExpenses() => _guard(() async{
    final res = await _dio.get('/expenses');

    final List<dynamic> data = res.data;

    return data.map((json) {
      return ExpenseModel.fromJson(Map<String, dynamic>.from(json as Map));
    }).toList();
  });

  Future<ExpenseModel> getExpense(int id) => _guard(() async{
    final res = await _dio.get('/expenses/$id');
    
    return ExpenseModel.fromJson(Map<String, dynamic>.from(res.data as Map));
  });

  Future<ExpenseModel> addExpense(ExpenseModel expense) => _guard(() async{
    final res = await _dio.post('/expenses', data: expense.toJson());

    return ExpenseModel.fromJson(Map<String, dynamic>.from(res.data as Map));
  });

  Future<ExpenseModel> updateExpense(int id, ExpenseModel expense) => _guard(() async{
    final res = await _dio.put('/expenses/$id', data: expense.toJson());

    return ExpenseModel.fromJson(Map<String, dynamic>.from(res.data as Map));
  });

  Future<void> deleteExpense(int id) => _guard(() async{
    await _dio.delete('/expenses/$id');
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
      throw ExpensesException(message, statusCode: e.response?.statusCode);
    }
  }

}

class ExpensesException implements Exception{
  ExpensesException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
  @override
  String toString() => message;
}