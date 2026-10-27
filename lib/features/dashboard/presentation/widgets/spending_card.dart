import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SpendingCard extends StatelessWidget {
  final double monthlySpending;
  final double monthlyBudget;

  const SpendingCard({
    super.key,
    required this.monthlySpending,
    required this.monthlyBudget,
  });

  @override
  Widget build(BuildContext context) {
    final remainingBudget = monthlyBudget - monthlySpending;

    final progress = monthlyBudget > 0
        ? (monthlySpending / monthlyBudget).clamp(0.0, 1.0)
        : 0.0;

    final currencyFormat = NumberFormat.currency(
      locale: 'en_IN',
      symbol: '₹',
      decimalDigits: 2,
    );

    final monthLabel = DateFormat('MMMM yyyy').format(DateTime.now());

    final isOverBudget = monthlySpending > monthlyBudget;

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(monthLabel, style: theme.textTheme.titleMedium),

            const SizedBox(height: 20),

            Text('Monthly Spending', style: theme.textTheme.bodyMedium),

            const SizedBox(height: 6),

            Text(
              currencyFormat.format(monthlySpending),
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              'of ${currencyFormat.format(monthlyBudget)} budget',
              style: theme.textTheme.bodyMedium,
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 10,
                backgroundColor: colorScheme.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isOverBudget ? colorScheme.error : colorScheme.primary,
                ),
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    monthlyBudget > 0
                        ? '${(monthlySpending / monthlyBudget * 100).toStringAsFixed(1)}% used'
                        : 'No budget set',
                    style: theme.textTheme.bodySmall,
                  ),
                ),

                const SizedBox(width: 8),

                Flexible(
                  child: Text(
                    monthlyBudget <= 0
                        ? 'Set a budget'
                        : isOverBudget
                        ? '${currencyFormat.format(-remainingBudget)} over budget'
                        : '${currencyFormat.format(remainingBudget)} left',

                    textAlign: TextAlign.end,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isOverBudget
                          ? colorScheme.error
                          : colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
