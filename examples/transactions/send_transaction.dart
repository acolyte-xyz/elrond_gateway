import 'package:elrond_gateway/elrond_gateway.dart';
import 'package:http/io_client.dart';

void main() async {
  final gateway = ElrondGateway(
    client: IOClient(),
    baseUrl: testnetGatewayBaseUrl,
  );

  try {
    final request = TransactionRequest(
      1,
      'v1.0.141',
      42,
      '100000000000000000',
      'erd1njqj2zggfup4nl83x0nfgqjkjserm7mjyxdx5vzkm8k0gkh40ezqtfz9lg',
      'erd1cux02zersde0l7hhklzhywcxk4u9n4py5tdxyx7vrvhnza2r4gmq4vw35r',
      1000000000,
      70000,
      '93207c579bf57be03add632b0e1624a73576eeda8a1687e0fa286f03eb1a17ffb125ccdb008a264c402f074a360442c7a034e237679322f62268b614e926d10f',
      // data: "food for cats",
    );
    final result =
        await gateway.transactions.sendTransaction(transaction: request);
    print('result = ${result.toJson()}');
  } on GatewayException catch (e) {
    print(e.toJson());
  }
}
