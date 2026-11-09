import '../entities/category.dart';

abstract class CategoriesRepo {
  Future<List<Category>> getCategories();
  Future<Map<String, double>> getCategoriesTotal({
    required DateTime startDate,
    required DateTime endDate
  });
}