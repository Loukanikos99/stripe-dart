import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class CustomerResource extends Resource<Customer> {
  CustomerResource(Client client) : super(client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final map = await get('customers/$customerId');
    return Customer.fromJson(map);
  }
}
