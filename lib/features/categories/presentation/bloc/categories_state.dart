import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spend_lens/features/categories/domain/entities/category.dart';

part 'categories_state.freezed.dart';

enum CategoriesStatus {initial, loading, success, error}

@freezed
abstract class CategoriesState with _$CategoriesState{
  const factory CategoriesState({
    @Default(CategoriesStatus.initial)
    CategoriesStatus status,

    @Default([])
    List<Category> categories,

    String? errorMessage,
}) = _CategoriesState;
}
