import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/data/repos/auth_repo_impl.dart';
import 'package:furnit_ar/data/services/auth_base.dart';
import 'package:furnit_ar/data/services/firebase_auth_Service.dart';
import 'package:furnit_ar/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  final firebaseAuth = FirebaseAuth.instance;

  locator.registerLazySingleton<AuthBase>(
      () => FirebaseAuthService(firebaseAuth: firebaseAuth));
  locator
      .registerLazySingleton<AuthRepo>(() => AuthRepoImpl(authBase: locator()));
}
