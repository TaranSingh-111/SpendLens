import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spend_lens/features/dashboard/domain/entities/budget.dart';

part 'budget_model.freezed.dart';
part 'budget_model.g.dart';

@freezed
abstract class BudgetModel with _$BudgetModel {
  const factory BudgetModel({
    required int id,
    required int year,
    required int month,
    required int amount,
  }) = _BudgetModel;

  factory BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);
}

extension BudgetModelMapper on BudgetModel {
  Budget toEntity() {
    return Budget(id: id, year: year, month: month, amount: amount);
  }
}

extension BudgetEntityMapper on Budget {
  BudgetModel toModel() {
    return BudgetModel(id: id, year: year, month: month, amount: amount);
  }
}
