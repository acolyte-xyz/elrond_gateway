library elrond_gateway;

import 'package:elrond_gateway/src/constants.dart';
import 'package:elrond_gateway/src/repositories/addresses.dart';
import 'package:elrond_gateway/src/repositories/transactions.dart';
import 'package:http/http.dart';

export 'package:elrond_gateway/src/constants.dart';
export 'package:elrond_gateway/src/repositories/request/transactions/transaction.dart';
export 'package:elrond_gateway/src/repositories/response/addresses/addresses.dart';
export 'package:elrond_gateway/src/repositories/response/response.dart';
export 'package:elrond_gateway/src/repositories/response/transactions/transactions.dart';

class ElrondGateway {
  final Addresses addresses;
  final Transactions transactions;

  ElrondGateway({
    required final Client client,
    final String baseUrl = mainnetGatewayBaseUrl,
  })  : addresses = Addresses(baseUrl, client),
        transactions = Transactions(baseUrl, client);
}
