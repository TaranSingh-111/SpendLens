import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_event.dart';

import '../bloc/expenses_bloc.dart';
import '../bloc/expenses_state.dart';

class ExpenseDetailsPage extends StatefulWidget {
  final int expenseId;

  const ExpenseDetailsPage({super.key, required this.expenseId});

  @override
  State<ExpenseDetailsPage> createState() => _ExpenseDetailsPageState();
}

class _ExpenseDetailsPageState extends State<ExpenseDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ExpensesBloc>().add(LoadExpense(id: widget.expenseId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expense Details')),
      body: BlocBuilder<ExpensesBloc, ExpensesState>(
        builder: (context, state) {
          switch (state.detailStatus) {
            case LoadStatus.initial:
            case LoadStatus.loading:
              return const Center(child: CircularProgressIndicator());

            case LoadStatus.success:
              final expense = state.selectedExpense;

              if (expense == null || expense.id != widget.expenseId) {
                return const Center(child: CircularProgressIndicator());
              }

              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text('Total Amount'),
                          const SizedBox(height: 12),
                          Text(
                            '₹${expense.amount.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),

                    Text(
                      'Details',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),

                    const SizedBox(height: 16),

                    _DetailTile(
                      icon: Icons.category_outlined,
                      label: 'Category',
                      value: expense.category,
                    ),
                    _DetailTile(
                      icon: Icons.calendar_today_outlined,
                      label: 'Date',
                      value: DateFormat(
                        'dd MMM yyyy',
                      ).format(expense.expenseDate),
                    ),
                    _DetailTile(
                      icon: Icons.description_outlined,
                      label: 'Description',
                      value: expense.description?.isNotEmpty == true
                          ? expense.description!
                          : 'No description',
                    ),

                    const SizedBox(height: 28),

                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit_outlined),
                            label: const Text('Edit'),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline),
                            label: const Text('Delete'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );

            case LoadStatus.error:
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.detailErrorMessage ?? 'Failed to load expense.'),

                    const SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {
                        context.read<ExpensesBloc>().add(
                          LoadExpense(id: widget.expenseId),
                        );
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}

class _DetailTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(label, style: Theme.of(context).textTheme.bodySmall),
      subtitle: Text(value, style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
