import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spend_lens/features/auth/domain/entities/user.dart';

part 'expense.freezed.dart';

@freezed
abstract class Expense with _$Expense {
  const factory Expense({
    required int id,
    required DateTime expenseDate,
    required String category,
    required double amount,
    String? description,
  }) = _Expense;
}
