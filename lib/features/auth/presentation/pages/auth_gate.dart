import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_state.dart';
import 'package:spend_lens/features/auth/presentation/pages/login_page.dart';

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

            Authenticated(:final user) => Scaffold(
              appBar: AppBar(title: const Text('Home')),
              body: Center(child: Text('Welcome, ${user.email}')),
            ),

             RegistrationSuccess() || AuthLoading() || Unauthenticated()=> showLoginPage
                ? LoginPage(togglePage: togglePages)
                : RegisterPage(togglePage: togglePages),
          };
        }
    );
  }
}
