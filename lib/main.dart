import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/repo/auth_repo_impl.dart';
import 'package:spend_lens/features/auth/data/services/token_storage.dart';
import 'package:spend_lens/features/auth/presentation/pages/auth_gate.dart';
import 'package:spend_lens/features/auth/presentation/pages/login_page.dart';

import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/auth_event.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final tokens = TokenStorage();
  final dio = Dio(BaseOptions(baseUrl: ''))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async{
        final token = await tokens.readAccess();
        if(token != null) options.headers['Authorization'] = 'Bearer $token';
        handler.next(options);
      }
    ));
  
  final repo = AuthRepoImpl(AuthRemoteDataSource(dio), tokens);

  runApp(RepositoryProvider.value(
      value: repo,
    child: BlocProvider(
        create: (_) => AuthBloc(repo)..add(const AuthEvent.started()) ,
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
