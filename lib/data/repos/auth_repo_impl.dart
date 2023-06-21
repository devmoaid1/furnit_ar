import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:furnit_ar/core/errors/faliures.dart';
import 'package:furnit_ar/data/services/auth_base.dart';
import 'package:furnit_ar/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthBase authBase;
  const AuthRepoImpl({required this.authBase});
  @override
  Either<Failure, User> getCurrentUser() {
    try {
      final currentUser = authBase.getCurrentUser();
      return Right(currentUser);
    } catch (err) {
      return const Left(ServerFailure(message: 'no user found...login'));
    }
  }

  @override
  Future<Either<Failure, void>> loginWithEmail(
      {required String email, required String password}) async {
    try {
      final result =
          await authBase.loginWithEmail(email: email, password: password);
      return Right(result);
    } catch (err) {
      return Left(ServerFailure(message: err.toString()));
    }
  }

  @override
  Future<void> logout() async {
    await authBase.logout();
  }

  @override
  Future<Either<Failure, void>> register(
      {required String email,
      required String password,
      required String fullName,
      required String phone}) async {
    try {
      final result = await authBase.register(
          fullName: fullName, phone: phone, email: email, password: password);
      return Right(result);
    } catch (err) {
      return Left(ServerFailure(message: err.toString()));
    }
  }
}
