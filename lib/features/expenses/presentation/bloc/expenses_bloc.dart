import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repo/expenses_repo.dart';
import 'expenses_event.dart';
import 'expenses_state.dart';

class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  final ExpensesRepo _expenseRepo;
  
  ExpensesBloc({required this._expenseRepo}) 
      : super(const ExpensesState()) {
    on<LoadExpenses>(_onLoadExpenses);
    on<LoadExpense>(_onLoadExpense);
    on<AddExpense>(_onAddExpense);
    on<UpdateExpense>(_onUpdateExpense);
    on<DeleteExpense>(_onDeleteExpense);
  }

  Future<void> _onLoadExpenses(LoadExpenses event, Emitter<ExpensesState> emit) async{
    emit(state.copyWith(listStatus: LoadStatus.loading));

    try{
      final expenses = await _expenseRepo.getAllExpenses();

      emit(state.copyWith(
        listStatus: LoadStatus.success,
        expenses: expenses,
        listErrorMessage: null,
      ));
    } catch (e){
      emit(state.copyWith(
        listStatus: LoadStatus.error,
        listErrorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoadExpense(LoadExpense event, Emitter<ExpensesState> emit) async{
    emit(state.copyWith(detailStatus: LoadStatus.loading));

    try{
      final expense = await _expenseRepo.getExpense(event.id);

      emit(state.copyWith(
        detailStatus: LoadStatus.success,
        selectedExpense: expense,
        detailErrorMessage: null,
      ));
    } catch(e){
      emit(state.copyWith(
        detailStatus: LoadStatus.error,
        detailErrorMessage: e.toString()
      ));
    }
  }

  Future<void> _onAddExpense(AddExpense event, Emitter<ExpensesState> emit) async {
    emit(state.copyWith(
      operationStatus: OperationStatus.loading,
      operationErrorMessage: null,
      successMessage: null,
    ));

    try{
      final newExpense = await _expenseRepo.addExpense(event.expense);

      emit(state.copyWith(
        operationStatus: OperationStatus.success,
        expenses: [...state.expenses, newExpense],
        successMessage: 'Expense added successfully',
        operationErrorMessage: null,
      ));
    }catch(e){
      emit(state.copyWith(
        operationStatus: OperationStatus.error,
        operationErrorMessage: e.toString()
      ));
    }
  }

  Future<void> _onUpdateExpense(UpdateExpense event, Emitter<ExpensesState> emit) async {
    emit(state.copyWith(
      operationStatus: OperationStatus.loading,
      operationErrorMessage: null,
      successMessage: null,
    ));

    try{
      final updatedExpense = await _expenseRepo.updateExpense(event.id, event.expense);

      final updatedExpenses = state.expenses.map((expense){
        return expense.id == event.id ? updatedExpense : expense;
      }).toList();

      emit(state.copyWith(
        operationStatus: OperationStatus.success,
        expenses: updatedExpenses,
        selectedExpense: updatedExpense,
        successMessage: 'Expense updated successfully',
        operationErrorMessage: null,
      ));
    }catch(e){
      emit(state.copyWith(
        operationStatus: OperationStatus.error,
        operationErrorMessage: e.toString()
      ));
    }
  }

  Future<void> _onDeleteExpense(DeleteExpense event, Emitter<ExpensesState> emit) async {
    emit(state.copyWith(
      operationStatus: OperationStatus.loading,
      operationErrorMessage: null,
      successMessage: null,
    ));

    try{
      await _expenseRepo.deleteExpense(event.id);

      final updatedExpenses = state.expenses
          .where((expense) => expense.id != event.id)
          .toList();

      emit(state.copyWith(
        operationStatus: OperationStatus.success,
        expenses: updatedExpenses,
        selectedExpense: state.selectedExpense?.id == event.id
            ? null
            : state.selectedExpense,
        successMessage: 'Expense deleted successfully',
        operationErrorMessage: null,
      ));
    }catch(e){
      emit(state.copyWith(
        operationStatus: OperationStatus.error,
        operationErrorMessage: e.toString()
      ));
    }
  }

}
