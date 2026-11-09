import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_event.freezed.dart';

@freezed
sealed class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.loadCategories() = LoadCategories;
  const factory CategoriesEvent.loadCategoriesTotal({
    required DateTime startDate,
    required DateTime endDate,
}) = LoadCategoriesTotal;
}
