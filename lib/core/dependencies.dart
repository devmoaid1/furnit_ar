import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/core/api/firebase_api_consumer.dart';
import 'package:furnit_ar/core/api/firebase_api_service.dart';
import 'package:furnit_ar/data/repos/auth_repo_impl.dart';
import 'package:furnit_ar/data/services/auth_base.dart';
import 'package:furnit_ar/data/services/customer_service.dart';
import 'package:furnit_ar/data/services/firebase_auth_Service.dart';
import 'package:furnit_ar/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  final firebaseAuth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;

  // services
  locator.registerLazySingleton<AuthBase>(
      () => FirebaseAuthService(firebaseAuth: firebaseAuth));
  locator.registerLazySingleton<FirebaseApiService>(
      () => FirebaseApiConsumer(firestore: fireStore));
  locator.registerLazySingleton<CustomerService>(
      () => CustomerServiceImpl(firebaseApiService: locator()));

  // repos
  locator.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(authBase: locator(), customerService: locator()));
}
