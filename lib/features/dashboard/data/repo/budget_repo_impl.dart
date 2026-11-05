import 'package:spend_lens/features/dashboard/data/data_sources/budget_remote_data_source.dart';
import 'package:spend_lens/features/dashboard/data/models/budget_model.dart';
import 'package:spend_lens/features/dashboard/domain/entities/budget.dart';
import 'package:spend_lens/features/dashboard/domain/repo/budget_repo.dart';

class BudgetRepoImpl implements BudgetRepo{

  final BudgetRemoteDataSource _remote;

  BudgetRepoImpl(this._remote);

  @override
  Future<Budget> getBudget(int year, int month) async {
    final model = await _remote.getBudget(year, month);

    return model.toEntity();
  }

  @override
  Future<Budget> saveBudget(double amount) async {
    final model = await _remote.saveBudget(amount);

    return model.toEntity();
  }
}