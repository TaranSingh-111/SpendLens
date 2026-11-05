// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BudgetModel _$BudgetModelFromJson(Map<String, dynamic> json) => _BudgetModel(
  id: (json['id'] as num).toInt(),
  year: (json['year'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$BudgetModelToJson(_BudgetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'month': instance.month,
      'amount': instance.amount,
    };
