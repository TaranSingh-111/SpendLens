import '../../expenses/domain/entities/expense.dart';

double calculateMonthlySpending(List<Expense> expenses){
  final now = DateTime.now();

  return expenses
      .where(
      (expense) =>
          expense.expenseDate.year == now.year &&
          expense.expenseDate.month == now.month,
  )
      .fold<double>(
        0,
      (total, expense) => total + expense.amount
  );
}