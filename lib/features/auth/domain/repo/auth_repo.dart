import '../entities/user.dart';

abstract class AuthRepo {
  Future<User?> login(String email, String password);
  Future<void> register(String email, String password, String name);
  Future<User?> restoreSession();
  Future<void> logout();
}