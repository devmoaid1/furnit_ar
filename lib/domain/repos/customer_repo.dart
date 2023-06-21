import 'package:dartz/dartz.dart';
import 'package:furnit_ar/core/errors/faliures.dart';
import 'package:furnit_ar/data/models/customer.dart';

abstract class CustomerRepo {
  Future<Either<Failure, Customer>> getCustomerById({required String id});
  Future<Either<Failure, void>> addCustomer({required Customer customer});
}
