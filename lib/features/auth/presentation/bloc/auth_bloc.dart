import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/repo/auth_repo_impl.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repoImpl) : super(const AuthState.initial()) {
    on<AuthStarted>(_onStarted);
    on<AuthLoginRequested>(_onLogin);
    on<AuthRegisterRequested>(_onRegister);
    on<AuthLogoutRequested>(_onLogout);
  }

  final AuthRepoImpl _repoImpl;

  Future<void> _onStarted(AuthStarted e, Emitter<AuthState> emit) async{
    final user = await _repoImpl.restoreSession();
    emit(user != null
        ? AuthState.authenticated(user)
        :const AuthState.unauthenticated());
  }

  Future<void> _onLogin(AuthLoginRequested e, Emitter<AuthState> emit) async{
    emit(const AuthState.loading());
    try{
      final user = await _repoImpl.login(e.email, e.password);
      emit(AuthState.authenticated(user!));
    }on AuthException catch (ex){
      emit(AuthState.unauthenticated(error: ex.message));
    }
  }

  Future<void> _onRegister(AuthRegisterRequested e, Emitter<AuthState> emit) async{
    emit(const AuthState.loading());
    try{
      final user = await _repoImpl.register(e.name, e.email, e.password);
      emit(AuthState.authenticated(user!));
    }on AuthException catch (ex){
      emit(AuthState.unauthenticated(error: ex.message));
    }
  }

  Future<void> _onLogout(AuthLogoutRequested e, Emitter<AuthState> emit) async{
    await _repoImpl.logout();
    emit(const AuthState.unauthenticated());
  }
}
