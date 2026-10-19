import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_event.dart';
import 'package:spend_lens/features/auth/presentation/bloc/auth_state.dart';

import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? togglePage;

  const LoginPage({super.key, required this.togglePage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  void login() {
    context.read<AuthBloc>().add(
      AuthEvent.loginRequested(
        email: _email.text.trim(),
        password: _password.text.trim(),
      ),
    );
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, curr) => curr is Unauthenticated,
      listener: (context, state) {
        if (state case Unauthenticated(:final error?)) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(error)));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                  colors: [
                    Color(0xFFD9B296), // Muted peach
                    Color(0xFFC99F7F),
                  ],
                ),
              ),
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Card(
                              color: const Color(0xFFFFFBF7),
                              shadowColor: Colors.black.withOpacity(0.12),
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 28,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/logo.png',
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                    SizedBox(height: 20),

                                    Text(
                                      "Welcome Back",
                                      style: TextStyle(
                                        color: Color(0xFF263238),
                                        fontSize: 25,
                                      ),
                                    ),
                                    SizedBox(height: 30),

                                    MyTextField(
                                      controller: _email,
                                      hintText: 'Email',
                                      obscureText: false,
                                    ),
                                    SizedBox(height: 30),

                                    MyTextField(
                                      controller: _password,
                                      hintText: 'Password',
                                      obscureText: true,
                                    ),
                                    SizedBox(height: 30),

                                    state is AuthLoading
                                        ? const Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 12,
                                            ),
                                            child: CircularProgressIndicator(),
                                          )
                                        : MyButton(
                                            onTap: () {
                                              login();
                                            },
                                            text: "Login",
                                          ),
                                    SizedBox(height: 30),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Not a member? "),
                                        GestureDetector(
                                          onTap: widget.togglePage,
                                          child: Text(
                                            "Register Now",
                                            style: TextStyle(
                                              color: Color(0xFF00897B),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
