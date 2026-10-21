import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';

import '../../domain/repo/auth_repo.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(const AuthState.initial()) {
    on<AuthStarted>(_onStarted);
    on<AuthLoginRequested>(_onLogin);
    on<AuthRegisterRequested>(_onRegister);
    on<AuthLogoutRequested>(_onLogout);
  }

  final AuthRepo _authRepo;

  Future<void> _onStarted(AuthStarted e, Emitter<AuthState> emit) async{

    try {
      final user = await _authRepo.restoreSession();
      emit(user != null
          ? AuthState.authenticated(user)
          :const AuthState.unauthenticated());
    } on AuthException catch (e) {
      emit(AuthState.unauthenticated(error: e.message));
    }
  }

  Future<void> _onLogin(AuthLoginRequested e, Emitter<AuthState> emit) async{
    emit(const AuthState.loading());
    try{
      final user = await _authRepo.login(e.email, e.password);

      if (user == null) {
        emit(const AuthState.unauthenticated(
          error: 'Login failed. Please try again.',
        ));
        return;
      }

      emit(AuthState.authenticated(user));
    }on AuthException catch (ex){
      emit(AuthState.unauthenticated(error: ex.message));
    }
  }

  Future<void> _onRegister(AuthRegisterRequested e, Emitter<AuthState> emit) async{
    emit(const AuthState.loading());
    try{
      await _authRepo.register(e.email, e.password, e.name);
      emit(const AuthState.registrationSuccess());
    }on AuthException catch (ex){
      emit(AuthState.unauthenticated(error: ex.message));
    }
  }

  Future<void> _onLogout(AuthLogoutRequested e, Emitter<AuthState> emit) async{
    emit(const AuthState.loading());
    try {
      await _authRepo.logout();

    } finally {
      emit(const AuthState.unauthenticated());
    }
  }
}
