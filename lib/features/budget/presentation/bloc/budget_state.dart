import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/budget.dart';

part 'budget_state.freezed.dart';

enum BudgetLoadStatus {initial, loading, success, error}

enum BudgetSaveStatus {initial, loading, success, error}

@freezed
abstract class BudgetState with _$BudgetState{
  const factory BudgetState({
    @Default(BudgetLoadStatus.initial)
    BudgetLoadStatus loadStatus,

    @Default(BudgetSaveStatus.initial)
    BudgetSaveStatus saveStatus,

    Budget? budget,

    String? loadError,
    String? saveError,

}) = _BudgetState;
}