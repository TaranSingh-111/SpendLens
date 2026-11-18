import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:spend_lens/features/month_selection/presentation/cubit/month_selection_state.dart';
import 'package:spend_lens/features/month_selection/presentation/cubit/month_selection_state.dart';

import '../../../budget/presentation/bloc/budget_bloc.dart';
import '../../../budget/presentation/bloc/budget_event.dart';
import '../../../categories/presentation/bloc/categories_bloc.dart';
import '../../../categories/presentation/bloc/categories_event.dart';
import '../../../expenses/presentation/bloc/expenses_bloc.dart';
import '../../../expenses/presentation/bloc/expenses_event.dart';
import '../../../expenses/presentation/pages/expense_form_page.dart';
import '../../../expenses/presentation/pages/expenses_page.dart';
import '../../../month_selection/presentation/cubit/month_selection_cubit.dart';
import '../../../profile/presentation/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    DashboardPage(),
    ExpensesPage(),
    ExpenseFormPage(),
    //AnalyticsPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();

    final month =
        context
            .read<MonthSelectionCubit>()
            .state
            .selectedMonth;

    _loadMonthlyData(month);
  }

  void _loadMonthlyData(DateTime month) {
    final startDate = DateTime(month.year, month.month, 1);
    final endDate = DateTime(month.year, month.month + 1, 1);

    context.read<ExpensesBloc>().add(
      LoadExpenses(
        startDate: startDate,
        endDate: endDate,
      ),
    );

    context.read<BudgetBloc>().add(
      LoadBudget(
        year: month.year,
        month: month.month,
      ),
    );

    context.read<CategoriesBloc>().add(
      LoadCategoriesTotal(
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MonthSelectionCubit, MonthSelectionState>(
      listener: (context, state) {
        _loadMonthlyData(state.selectedMonth);
      },
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt_long_outlined),
              selectedIcon: Icon(Icons.receipt_long),
              label: 'Expenses',
            ),
            NavigationDestination(
              icon: Icon(Icons.add_circle_outline),
              selectedIcon: Icon(Icons.add_circle),
              label: 'Add',
            ),
            // NavigationDestination(
            //   icon: Icon(Icons.analytics_outlined),
            //   selectedIcon: Icon(Icons.analytics),
            //   label: 'Analytics',
            // ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}