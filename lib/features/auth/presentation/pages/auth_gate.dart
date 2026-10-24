import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_state.dart';
import 'package:spend_lens/features/auth/presentation/pages/login_page.dart';
import 'package:spend_lens/features/expenses/domain/repo/expenses_repo.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_bloc.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_event.dart';
import 'package:spend_lens/features/home/presentation/pages/home_page.dart';

import 'register_page.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state){
          return switch(state) {
            AuthInitial()  => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),

            Authenticated(:final user) => BlocProvider(
              create: (context) => ExpensesBloc(
                  expenseRepo: context.read<ExpensesRepo>(),
              )..add(LoadExpenses()),
              child: const HomePage(),
            ),

             RegistrationSuccess() || AuthLoading() || Unauthenticated()=> showLoginPage
                ? LoginPage(togglePage: togglePages)
                : RegisterPage(togglePage: togglePages),
          };
        }
    );
  }
}
