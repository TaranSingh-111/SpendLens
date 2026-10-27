import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/dashboard/presentation/widgets/spending_card.dart';
import 'package:spend_lens/features/dashboard/util/calculate_monthly_spending.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_bloc.dart';

import '../../../expenses/presentation/bloc/expenses_state.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: BlocBuilder<ExpensesBloc, ExpensesState>(
        builder: (context, state) {
          if(state.listStatus == LoadStatus.loading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final monthlySpending = calculateMonthlySpending(state.expenses);

          return SpendingCard(monthlySpending: monthlySpending, monthlyBudget: 15000);
        },
      )
    );
  }
}
