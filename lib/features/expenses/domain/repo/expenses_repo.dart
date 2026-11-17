import '../entities/expense.dart';

abstract class ExpensesRepo {
  Future<List<Expense>> getAllExpenses({
    required DateTime startDate,
    required DateTime endDate
});
  Future<Expense> getExpense(int id);
  Future<Expense> addExpense(Expense expense);
  Future<Expense> updateExpense(int id, Expense expense);
  Future<void> deleteExpense(int id);
}