import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/expense.dart';

part 'expenses_event.freezed.dart';

@freezed
sealed class ExpensesEvent with _$ExpensesEvent {
  const factory ExpensesEvent.loadExpenses() = LoadExpenses;

  const factory ExpensesEvent.loadExpense({required int id}) = LoadExpense;

  const factory ExpensesEvent.addExpense({required Expense expense}) = AddExpense;

  const factory ExpensesEvent.updateExpense({
    required int id,
    required Expense expense
}) = UpdateExpense;

  const factory ExpensesEvent.deleteExpense({required int id}) = DeleteExpense;
}
