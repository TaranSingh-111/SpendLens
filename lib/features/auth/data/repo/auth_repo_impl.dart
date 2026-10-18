import 'package:spend_lens/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:spend_lens/features/auth/data/services/token_storage.dart';
import 'package:spend_lens/features/auth/domain/repo/auth_repo.dart';

import '../../domain/entities/user.dart';

class AuthRepoImpl implements AuthRepo{
  final AuthRemoteDataSource _remote;
  final TokenStorage _tokens;

  AuthRepoImpl(this._remote, this._tokens);

  @override
  Future<User?> login(String email, String password) async{
    final res = await _remote.login(email, password);
    await _tokens.save(access: res.accessToken, refresh: res.refreshToken);
    return res.user;
  }

  @override
  Future<User?> register(String name, String email, String password) async{
    final res = await _remote.register(name, email, password);

    return User(
      id: res.id.toString(),
      name: res.name,
      email: res.email
    );
  }

  @override
  Future<User?> restoreSession() async{
    final token = await _tokens.readAccess();
    if(token == null) return null;
    try{
      return await _remote.me();
    } on AuthException{
      await _tokens.clear();
      return null;
    }
  }

  @override
  Future<void> logout() => _tokens.clear();
}