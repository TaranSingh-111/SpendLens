import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spend_lens/features/expenses/domain/repo/expenses_repo.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_bloc.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_event.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_state.dart';
import 'package:spend_lens/features/expenses/presentation/pages/expense_details_page.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expenses'),
      ),
      body: BlocBuilder<ExpensesBloc, ExpensesState>(
          builder: (context, state){
            switch(state.listStatus){

              case LoadStatus.initial:
              case LoadStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );


              case LoadStatus.success:
                if(state.expenses.isEmpty){
                  return const Center(
                    child: Text('No expenses yet.'),
                  );
                }

                final expenses = [...state.expenses]
                  ..sort((a,b) => b.expenseDate.compareTo(a.expenseDate));

                return ListView.builder(
                    itemCount: expenses.length,
                    itemBuilder: (context, index){
                      final expense = expenses[index];

                      return ListTile(
                        leading: Text(DateFormat('dd/MM').format(expense.expenseDate)),
                        title: Text(expense.category),
                        subtitle: Text(expense.description ?? ''),
                        trailing: Text('₹${expense.amount}'),

                        onTap: () {
                          if(expense.id != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) =>
                                    BlocProvider.value(
                                      value: context.read<ExpensesBloc>(),
                                      child: ExpenseDetailsPage(
                                          expenseId: expense.id!),
                                    ),
                              ),
                            );
                          }
                        },
                      );
                    }
                );


              case LoadStatus.error:
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.listErrorMessage ?? 'Something went wrong'
                      ),
                      const SizedBox(height: 12,),
                      ElevatedButton(
                          onPressed: (){
                            context.read<ExpensesBloc>().add(LoadExpenses());
                          },
                          child: const Text('Retry'),
                      )
                    ],
                  )
                );
            }

          },
      )
    );
  }
}
