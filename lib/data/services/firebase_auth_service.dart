import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/data/services/auth_base.dart';

class FirebaseAuthService implements AuthBase {
  final FirebaseAuth firebaseAuth;
  const FirebaseAuthService({required this.firebaseAuth});

  @override
  User getCurrentUser() {
    if (firebaseAuth.currentUser != null) {
      return firebaseAuth.currentUser!;
    } else {
      throw 'no user logged in ';
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
  Future<UserCredential> register({
    required String email,
    required String password,
  }) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result;
    } on FirebaseAuthException catch (err) {
      throw err.message!;
    }
  }
}
