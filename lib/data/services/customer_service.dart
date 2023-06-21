import 'package:flutter/material.dart';
import 'package:furnit_ar/core/api/firebase_api_service.dart';
import 'package:furnit_ar/core/errors/exceptions.dart';

import '../models/customer.dart';

abstract class CustomerService {
  Future<Customer> getCustomerById({required String id});
  Future<void> addCustomer({required Customer customer});
}

class CustomerServiceImpl implements CustomerService {
  final FirebaseApiService firebaseApiService;

  CustomerServiceImpl({required this.firebaseApiService});
  @override
  Future<void> addCustomer({required Customer customer}) async {
    try {
      await firebaseApiService.addData('customer', customer.toJson());
    } on ServerException catch (err) {
      debugPrint(err.toString());
    }
  }

  @override
  Future<Customer> getCustomerById({required String id}) async {
    try {
      final response =
          await firebaseApiService.getDataByAttribute('customer', 'id', id);
      final customer = Customer.fromFirestore(response[0]);
      return customer;
    } on ServerException {
      throw const ServerException();
    }
  }
}
