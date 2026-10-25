
import 'package:spend_lens/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:spend_lens/features/categories/domain/repo/categories_repo.dart';

import '../../domain/entities/category.dart';
import '../models/category_model.dart';

class CategoriesRepoImpl implements CategoriesRepo{
  final CategoriesRemoteDataSource _remote;

  CategoriesRepoImpl(this._remote);

  @override
  Future<List<Category>> getCategories() async {
    final models = await _remote.getCategories();

    return models.map((model) => model.toEntity()).toList();
  }
}