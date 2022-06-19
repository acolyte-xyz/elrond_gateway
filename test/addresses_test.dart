import 'dart:convert';

import 'package:elrond_gateway/src/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_nonce/get_address_nonce.dart';
import 'package:elrond_gateway/src/response/response.dart';
import 'package:test/test.dart';

void main() {
  test('get address', () {
    final getAddressJson = '''{
  "data": {
    "account": {
        "address": "erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqylllslmq6y6",
        "nonce": 0,
        "balance": "100000000000000000000",
        "username": "",
        "code": "000000000000000000010000000000000000000000000000000000000004ffff",
        "codeHash": "YspAmEhzTEaqNOZlw+E+bPQx4JnfLJk4Fa/gtKas5fI=",
        "rootHash": "JF2QNq8wpVGijn9vvoSV+vGqTbuKVK1LIj7IlA21JXE=",
        "codeMetadata": "BAA=",
        "developerReward": "5670000000000000",
        "ownerAddress": "erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz"
    }
  },
  "error": "",
  "code": "successful"
}''';

    final response = GetAddressResponse.fromJson(json.decode(getAddressJson));
    expect(response.data, isNotNull);
    expect(
        response.data!.account.address,
        equals(
            'erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqylllslmq6y6'));
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });

  test('get address nonce', () {
    final getAddressNonceJson = '''{
  "data": {
    "nonce": 12
  },
  "error": "",
  "code": "successful"
}''';

    final response =
        GetAddressNonceResponse.fromJson(json.decode(getAddressNonceJson));
    expect(response.data, isNotNull);
    expect(response.data!.nonce, equals(12));
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });
}
