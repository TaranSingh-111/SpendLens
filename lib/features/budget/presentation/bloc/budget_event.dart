import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_event.freezed.dart';

@freezed
sealed class BudgetEvent with _$BudgetEvent {
  const factory BudgetEvent.loadBudget({required int year, required int month}) = LoadBudget;

  const factory BudgetEvent.saveBudget({required double amount}) = SaveBudget;
}