import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Future<void> loginWithEmail(
      {required String email, required String password});
  Future<UserCredential> register({
    required String email,
    required String password,
  });
  User getCurrentUser();

  Future<void> logout();
}
