import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Future<void> loginWithEmail(
      {required String email, required String password});
  Future<void> register(
      {required String email,
      required String password,
      required String fullName,
      required String phone});
  User getCurrentUser();
  bool isUserLoggedIn();
  Future<void> logout();
}
