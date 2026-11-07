import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/dashboard/domain/entities/budget.dart';
import 'package:spend_lens/features/dashboard/presentation/bloc/budget_state.dart';
import 'package:spend_lens/features/dashboard/presentation/widgets/spending_card.dart';
import 'package:spend_lens/features/dashboard/util/calculate_monthly_spending.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_bloc.dart';

import '../../../expenses/presentation/bloc/expenses_state.dart';
import '../bloc/budget_bloc.dart';
import '../bloc/budget_event.dart';
import '../widgets/budget_dialog.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  void initState(){
    super.initState();

    context.read<BudgetBloc>().add(
      BudgetEvent.loadBudget(year: DateTime.now().year, month: DateTime.now().month),
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

          final monthlySpending = calculateMonthlySpending(expenseState.expenses);

          return BlocBuilder<BudgetBloc, BudgetState>(
              builder: (context, budgetState){
                if(budgetState.loadStatus == BudgetLoadStatus.loading){
                  return const Center(child: CircularProgressIndicator(),);
                }

                final monthlyBudget = budgetState.budget?.amount ?? 0.0;


                return SpendingCard(
                  monthlySpending: monthlySpending,
                  monthlyBudget: monthlyBudget,
                  onSetBudget: _showBudgetDialog,
                );
              }

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
