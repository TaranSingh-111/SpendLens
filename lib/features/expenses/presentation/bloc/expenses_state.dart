import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/expense.dart';

part 'expenses_state.freezed.dart';

enum LoadStatus {initial, loading, success, error}

enum OperationStatus {initial, loading, success, error}

@freezed
abstract class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    @Default(LoadStatus.initial)
    LoadStatus listStatus,

    @Default(LoadStatus.initial)
    LoadStatus detailStatus,

    @Default(OperationStatus.initial)
    OperationStatus operationStatus,

    @Default([])
    List<Expense> expenses,

    Expense? selectedExpense,

    String? listErrorMessage,
    String? detailErrorMessage,
    String? operationErrorMessage,
    String? successMessage
}) = _ExpenseState;
}
