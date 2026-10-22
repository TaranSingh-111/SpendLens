import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/models/user_model.dart';
import 'package:spend_lens/features/auth/data/services/token_storage.dart';
import 'package:spend_lens/features/auth/domain/repo/auth_repo.dart';

import '../../domain/entities/user.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource _remote;
  final TokenStorage _tokens;

  AuthRepoImpl(this._remote, this._tokens);

  @override
  Future<User?> login(String email, String password) async {
    final res = await _remote.login(email, password);
    await _tokens.save(access: res.accessToken, refresh: res.refreshToken);
    return res.user.toEntity();
  }

  @override
  Future<void> register(String email, String password, String name) async {
    await _remote.register(email, password, name);
  }

  @override
  Future<User?> restoreSession() async {
    final refreshToken = await _tokens.readRefresh();
    if (refreshToken == null) return null;
    try {
      final res = await _remote.refresh(refreshToken);

      //saves both replacement token
      await _tokens.save(access: res.accessToken, refresh: res.refreshToken);

      return res.user.toEntity();
    } on AuthException {
      await _tokens.clear();
      return null;
    }
  }

  @override
  Future<void> logout() async {
    final refreshToken = await _tokens.readRefresh();

    try {
      if (refreshToken != null) {
        await _remote.logout(refreshToken);
      }
    } finally{
      await _tokens.clear();
    }

  }
}
