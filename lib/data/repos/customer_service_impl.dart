import 'package:dartz/dartz.dart';
import 'package:furnit_ar/core/errors/exceptions.dart';
import 'package:furnit_ar/core/errors/faliures.dart';
import 'package:furnit_ar/data/models/customer.dart';
import 'package:furnit_ar/data/services/customer_service.dart';
import 'package:furnit_ar/domain/repos/customer_repo.dart';

class CustomerRepoImpl implements CustomerRepo {
  final CustomerService customerService;

  CustomerRepoImpl({required this.customerService});
  @override
  Future<Either<Failure, void>> addCustomer(
      {required Customer customer}) async {
    try {
      final response = await customerService.addCustomer(customer: customer);
      return Right(response);
    } on ServerException catch (err) {
      return Left(ServerFailure(message: err.toString()));
    }
  }

  @override
  Future<Either<Failure, Customer>> getCustomerById(
      {required String id}) async {
    try {
      final response = await customerService.getCustomerById(id: id);
      return Right(response);
    } on ServerException catch (err) {
      return Left(ServerFailure(message: err.toString()));
    }
  }
}
