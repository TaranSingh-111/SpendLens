import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../categories/domain/entities/category.dart';
import '../../../categories/presentation/bloc/categories_bloc.dart';
import '../../../categories/presentation/bloc/categories_state.dart';
import '../../../expenses/domain/entities/expense.dart';
import 'category_card.dart';

class CategorySpendingGrid extends StatelessWidget {
  final Map<String, double> totals;

  const CategorySpendingGrid({
    super.key,
    required this.totals,
  });

  @override
  Widget build(BuildContext context) {
    final categories = totals.keys.toList();
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: categories.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            final total = totals[category] ?? 0.0;

            return CategoryCard(
              category: category,
              total: total,
            );
          },
        );
      },
    );
  }
}