import 'package:furnit_ar/core/api/firebase_api_service.dart';

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
    await firebaseApiService.addData('customer', customer.toJson());
  }

  @override
  Future<Customer> getCustomerById({required String id}) async {
    final response =
        await firebaseApiService.getDataByAttribute('customer', 'id', id);
    final customer = Customer.fromFirestore(response[0]);
    return customer;
  }
}
