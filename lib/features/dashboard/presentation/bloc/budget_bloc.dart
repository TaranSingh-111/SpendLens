import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/dashboard/domain/repo/budget_repo.dart';

import '../../data/data_sources/budget_remote_data_source.dart';
import 'budget_event.dart';
import 'budget_state.dart';



class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  final BudgetRepo _budgetRepo;

  BudgetBloc({required this._budgetRepo})
      : super(const BudgetState()) {
    on<LoadBudget>(_onLoadBudget);
    on<SaveBudget>(_onSaveBudget);
  }

  Future<void> _onLoadBudget(LoadBudget event, Emitter<BudgetState> emit) async {
    emit(state.copyWith(loadStatus: BudgetLoadStatus.loading));


    try{
      final budget = await _budgetRepo.getBudget(event.year, event.month);
      emit(state.copyWith(
        loadStatus: BudgetLoadStatus.success,
        budget: budget,
        loadError: null
      ));
    }catch (e) {
      if (e is BudgetException && e.statusCode == 404) {
        emit(state.copyWith(
          loadStatus: BudgetLoadStatus.success,
          budget: null,
          loadError: null,
        ));
      } else {
        emit(state.copyWith(
          loadStatus: BudgetLoadStatus.error,
          loadError: e.toString(),
        ));
      }
    }
  }

  Future<void> _onSaveBudget(SaveBudget event, Emitter<BudgetState> emit) async {
    emit(state.copyWith(saveStatus: BudgetSaveStatus.loading));

    try{
      final budget = await _budgetRepo.saveBudget(event.amount);

      emit(state.copyWith(
          saveStatus: BudgetSaveStatus.success,
          budget: budget,
          saveError: null
      ));
    }catch (e) {
      emit(state.copyWith(
          saveStatus: BudgetSaveStatus.error,
          saveError: e.toString()
      ));
    }
  }
}
