import 'dart:async';


import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/categories/domain/repo/categories_repo.dart';

import 'categories_event.dart';
import 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepo _categoriesRepo;

  CategoriesBloc({required this._categoriesRepo})
      : super(const CategoriesState()) {
    on<LoadCategories>(_onLoadCategories);
    on<LoadCategoriesTotal>(_onLoadCategoriesTotal);
  }

  Future<void> _onLoadCategories(LoadCategories event, Emitter<CategoriesState> emit) async {
    emit(state.copyWith(status: CategoriesStatus.loading));

    try{
      final categories = await _categoriesRepo.getCategories();

      emit(state.copyWith(
        status: CategoriesStatus.success,
        categories: categories,
        errorMessage: null
      ));
    }catch(e){
      emit(state.copyWith(
        status: CategoriesStatus.error,
        errorMessage: 'Failed to fetch categories',
      ));
    }
  }

  Future<void> _onLoadCategoriesTotal(LoadCategoriesTotal event, Emitter<CategoriesState> emit) async {
    print('-----event triggered');
    emit(state.copyWith(totalStatus: CategoriesStatus.loading));

    try{
      final totals = await _categoriesRepo.getCategoriesTotal(startDate: event.startDate, endDate: event.endDate);
      print('---------${totals.length}');
      emit(state.copyWith(
        totalStatus: CategoriesStatus.success,
        categoryTotals: totals,
        errorMessage: null,
      ));
    }catch (e){
      print(e);
      emit(state.copyWith(
        totalStatus: CategoriesStatus.error,
        errorMessage: 'Failed to fetch category total'
      ));
    }
  }
}
