// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Expense _$ExpenseFromJson(Map<String, dynamic> json) => _Expense(
  id: (json['id'] as num).toInt(),
  expenseDate: DateTime.parse(json['expenseDate'] as String),
  category: json['category'] as String,
  amount: (json['amount'] as num).toDouble(),
  description: json['description'] as String?,
);

Map<String, dynamic> _$ExpenseToJson(_Expense instance) => <String, dynamic>{
  'id': instance.id,
  'expenseDate': instance.expenseDate.toIso8601String(),
  'category': instance.category,
  'amount': instance.amount,
  'description': instance.description,
};
