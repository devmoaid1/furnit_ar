import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/core/errors/faliures.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> loginWithEmail(
      {required String email, required String password});
  Future<Either<Failure, void>> register(
      {required String email,
      required String password,
      required String fullName,
      required String phone});
  Either<Failure, User> getCurrentUser();

  Future<void> logout();
}
