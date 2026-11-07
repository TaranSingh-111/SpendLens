import 'dart:ffi';

import 'package:spend_lens/features/budget/domain/entities/budget.dart';

abstract class BudgetRepo {
  Future<Budget> getBudget(int year, int month);
  Future<Budget> saveBudget(double amount);
}