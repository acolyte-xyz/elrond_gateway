import 'package:elrond_gateway/elrond_gateway.dart';
import 'package:http/io_client.dart';

void main() async {
  final gateway = ElrondGateway(
    client: IOClient(),
    baseUrl: testnetGatewayBaseUrl,
  );

  try {
    final result = await gateway.addresses.getStorageValueForAddress(
      bech32Address:
          'erd1njqj2zggfup4nl83x0nfgqjkjserm7mjyxdx5vzkm8k0gkh40ezqtfz9lg',
      key: 'test',
    );
    print('result = ${result.toJson()}');
  } on GatewayException catch (e) {
    print(e.toJson());
  }
}
