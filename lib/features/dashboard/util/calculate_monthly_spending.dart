import '../../expenses/domain/entities/expense.dart';

double calculateMonthlySpending(List<Expense> expenses){

  return expenses
      .fold<double>(
        0,
      (total, expense) => total + expense.amount
  );
}