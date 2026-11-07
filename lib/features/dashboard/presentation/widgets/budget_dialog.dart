import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../budget/presentation/bloc/budget_bloc.dart';
import '../../../budget/presentation/bloc/budget_event.dart';

class BudgetDialog extends StatefulWidget {
  const BudgetDialog({super.key});

  @override
  State<BudgetDialog> createState() => _BudgetDialogState();
}

class _BudgetDialogState extends State<BudgetDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Set Monthly Budget'),
      content: TextField(
        controller: _controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: const InputDecoration(
          labelText: 'Budget Amount',
          prefixText: '₹ ',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final amount = double.tryParse(_controller.text);

            if (amount == null || amount <= 0) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Enter a valid value")));
              return;
            }

            context.read<BudgetBloc>().add(
              BudgetEvent.saveBudget(amount: amount),
            );

            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}