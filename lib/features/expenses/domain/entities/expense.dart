import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
abstract class Expense with _$Expense{
  const factory Expense(
      {
        required int id,
        required DateTime expenseDate,
        required String category,
        required double amount,
        String? description
      }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}