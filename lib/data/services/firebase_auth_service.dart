import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/core/dependencies.dart';
import 'package:furnit_ar/data/services/auth_base.dart';

class FirebaseAuthService implements AuthBase {
  final firebaseAuth = locator<FirebaseAuth>();
  @override
  User getCurrentUser() {
    if (firebaseAuth.currentUser != null) {
      return firebaseAuth.currentUser!;
    } else {
      throw 'no user logged in ';
    }
  }

  @override
  bool isUserLoggedIn() {
    if (firebaseAuth.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> loginWithEmail(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (err) {
      throw err.message!;
    }
  }

  @override
  Future<void> logout() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<void> register(
      {required String email,
      required String password,
      required String fullName,
      required String phone}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (err) {
      throw err.message!;
    }
  }
}
