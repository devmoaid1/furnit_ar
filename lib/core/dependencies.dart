import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/data/services/auth_base.dart';
import 'package:furnit_ar/data/services/firebase_auth_Service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  final firebaseAuth = FirebaseAuth.instance;

  locator.registerLazySingleton<AuthBase>(
      () => FirebaseAuthService(firebaseAuth: firebaseAuth));
}
