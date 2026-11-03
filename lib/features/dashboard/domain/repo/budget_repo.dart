import 'package:spend_lens/features/dashboard/domain/entities/budget.dart';

abstract class BudgetRepo {
  Future<Budget> getBudget(int year, int month);
  Future<Budget> saveBudget(Budget budget);
}