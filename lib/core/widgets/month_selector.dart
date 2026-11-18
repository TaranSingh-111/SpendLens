import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spend_lens/features/month_selection/presentation/cubit/month_selection_state.dart';

import '../../features/month_selection/presentation/cubit/month_selection_cubit.dart';

class MonthSelector extends StatelessWidget {
  const MonthSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonthSelectionCubit, MonthSelectionState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                context.read<MonthSelectionCubit>().previousMonth();
              },
              icon: const Icon(Icons.chevron_left),
            ),

            Text(
              DateFormat('MMMM yyyy').format(state.selectedMonth),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            IconButton(
              onPressed: () {
                context.read<MonthSelectionCubit>().nextMonth();
              },
              icon: const Icon(Icons.chevron_right),
            ),
          ],
        );
      },
    );
  }
}