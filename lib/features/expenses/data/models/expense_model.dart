import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spend_lens/features/auth/data/models/user_model.dart';

import '../../domain/entities/expense.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
abstract class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    required int id,
    required DateTime expenseDate,
    required String category,
    required double amount,
    String? description,
    required UserModel user,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}

extension ExpenseModelMapper on ExpenseModel {
  Expense toEntity() {
    return Expense(
      id: id,
      expenseDate: expenseDate,
      category: category,
      amount: amount,
      description: description,
      user: user.toEntity(),
    );
  }
}

extension ExpenseEntityMapper on Expense{
  ExpenseModel toModel(){
    return ExpenseModel(
      id: id,
      expenseDate: expenseDate,
      category: category,
      amount: amount,
      description: description,
      user: user.toModel(),
    );
  }
}
