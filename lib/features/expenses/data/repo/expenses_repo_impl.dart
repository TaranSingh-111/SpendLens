import 'package:spend_lens/features/expenses/data/data_sources/expenses_remote_data_source.dart';
import 'package:spend_lens/features/expenses/domain/entities/expense.dart';
import 'package:spend_lens/features/expenses/domain/repo/expenses_repo.dart';

import '../models/expense_model.dart';

class ExpensesRepoImpl implements ExpensesRepo{

  final ExpensesRemoteDataSource _remote;

  ExpensesRepoImpl(this._remote);

  @override
  Future<Expense> addExpense(Expense expense) async{
    final model = await _remote.addExpense(expense.toModel());

    return model.toEntity();
  }

  @override
  Future<void> deleteExpense(int id) async{
    await _remote.deleteExpense(id);
  }

  @override
  Future<List<Expense>> getAllExpenses() async{
    final models = await _remote.getAllExpenses();

    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Expense> getExpense(int id) async{
    final model = await _remote.getExpense(id);

    return model.toEntity();
  }

  @override
  Future<Expense> updateExpense(int id, Expense expense) async{
    final model = await _remote.updateExpense(id, expense.toModel());

    return model.toEntity();
  }
}