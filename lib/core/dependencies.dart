import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  final firebaseAuth = FirebaseAuth.instance;

  locator.registerLazySingleton<FirebaseAuth>(() => firebaseAuth);
}
