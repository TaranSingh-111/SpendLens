import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/expense.dart';

part 'expenses_state.freezed.dart';

enum ExpenseStatus {initial, loading, loaded, detailLoaded, operationSuccess, error}

@freezed
abstract class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    @Default(ExpenseStatus.initial) ExpenseStatus status,
    @Default([]) List<Expense> expenses,
    Expense? selectedExpense,
    String? errorMessage,
    String? successMessage
}) = _ExpenseState;
}
