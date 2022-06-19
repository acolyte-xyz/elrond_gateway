library elrond_gateway;

import 'package:dio/dio.dart';
import 'package:elrond_gateway/src/repositories/addresses/addresses.dart';

class ElrondGateway {
  final Addresses addresses;

  ElrondGateway(Dio dio) : addresses = Addresses(dio);
}
