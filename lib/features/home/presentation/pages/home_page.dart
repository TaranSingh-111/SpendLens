import 'package:flutter/material.dart';

import '../../../expenses/presentation/pages/add_expense_page.dart';
import '../../../expenses/presentation/pages/expenses_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    //HomeTab(),
    ExpensesPage(),
    AddExpensePage(),
    //AnalyticsPage(),
    //ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // NavigationDestination(
          //   icon: Icon(Icons.home_outlined),
          //   selectedIcon: Icon(Icons.home),
          //   label: 'Home',
          // ),
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
          // NavigationDestination(
          //   icon: Icon(Icons.person_outline),
          //   selectedIcon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
      ),
    );
  }
}