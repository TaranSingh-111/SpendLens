import 'package:flutter_bloc/flutter_bloc.dart';
import 'month_selection_state.dart';

class MonthSelectionCubit extends Cubit<MonthSelectionState> {
  MonthSelectionCubit()
      : super(
    MonthSelectionState(
      selectedMonth: DateTime(
        DateTime.now().year,
        DateTime.now().month,
      ),
    ),
  );

  void selectMonth(DateTime month) {
    emit(
      MonthSelectionState(
        selectedMonth: DateTime(month.year, month.month),
      ),
    );
  }

  void nextMonth() {
    final month = state.selectedMonth;

    selectMonth(DateTime(month.year, month.month + 1));
  }

  void previousMonth() {
    final month = state.selectedMonth;

    selectMonth(DateTime(month.year, month.month - 1));
  }
}