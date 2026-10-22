// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) =>
    _ExpenseModel(
      id: (json['id'] as num).toInt(),
      expenseDate: DateTime.parse(json['expenseDate'] as String),
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExpenseModelToJson(_ExpenseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expenseDate': instance.expenseDate.toIso8601String(),
      'category': instance.category,
      'amount': instance.amount,
      'description': instance.description,
      'user': instance.user,
    };
