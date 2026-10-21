import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/repo/auth_repo_impl.dart';
import 'package:spend_lens/features/auth/data/services/token_storage.dart';
import 'package:spend_lens/features/auth/presentation/pages/auth_gate.dart';

import 'core/network/auth_interceptor.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/auth_event.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final tokens = TokenStorage();

  final dio = Dio(BaseOptions(
    baseUrl: 'http://10.0.2.2:8080',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10)
  ));

  final authRemote = AuthRemoteDataSource(dio);

  dio.interceptors.add(AuthInterceptor(
    dio: dio,
    token: tokens,
    dataSource: authRemote
  ));
  
  final repo = AuthRepoImpl(authRemote, tokens);

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
