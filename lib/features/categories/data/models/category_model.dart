import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/category.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel{
  const factory CategoryModel({
    required String name
}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension CategoryModelMapper on CategoryModel{
  Category toEntity(){
    return Category(
      name: name
    );
  }
}

extension CategoryEntityMapper on Category{
  CategoryModel toModel(){
    return CategoryModel(
        name: name
    );
  }
}