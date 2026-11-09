import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/budget/domain/entities/budget.dart';
import 'package:spend_lens/features/budget/presentation/bloc/budget_state.dart';
import 'package:spend_lens/features/dashboard/presentation/widgets/spending_card.dart';
import 'package:spend_lens/features/dashboard/util/calculate_monthly_spending.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_bloc.dart';

import '../../../budget/presentation/bloc/budget_bloc.dart';
import '../../../budget/presentation/bloc/budget_event.dart';
import '../../../categories/presentation/bloc/categories_bloc.dart';
import '../../../categories/presentation/bloc/categories_event.dart';
import '../../../categories/presentation/bloc/categories_state.dart';
import '../../../expenses/presentation/bloc/expenses_state.dart';

import '../widgets/budget_dialog.dart';
import '../widgets/category_spending_grid.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();

    final now = DateTime.now();

    context.read<BudgetBloc>().add(
      BudgetEvent.loadBudget(year: now.year, month: now.month),
    );

    context.read<CategoriesBloc>().add(
      CategoriesEvent.loadCategoriesTotal(
          startDate: DateTime(now.year, now.month, 1),
          endDate: DateTime(now.year, now.month + 1, 1)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: BlocBuilder<ExpensesBloc, ExpensesState>(
        builder: (context, expenseState) {
          if (expenseState.listStatus == LoadStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final monthlySpending = calculateMonthlySpending(
            expenseState.expenses,
          );

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //budget card
                BlocBuilder<BudgetBloc, BudgetState>(
                  builder: (context, budgetState) {
                    if (budgetState.loadStatus == BudgetLoadStatus.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final monthlyBudget = budgetState.budget?.amount ?? 0.0;

                    return SpendingCard(
                      monthlySpending: monthlySpending,
                      monthlyBudget: monthlyBudget,
                      onSetBudget: _showBudgetDialog,
                    );
                  },
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Category Spending',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                // Category spending cards
                BlocBuilder<CategoriesBloc, CategoriesState>(
                  builder: (context, categoryState) {
                    return CategorySpendingGrid(
                      totals: categoryState.categoryTotals,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showBudgetDialog() {
    showDialog(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<BudgetBloc>(),
        child: const BudgetDialog(),
      ),
    );
  }
}
