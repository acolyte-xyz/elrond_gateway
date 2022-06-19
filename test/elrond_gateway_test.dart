import 'dart:convert';

import 'package:elrond_gateway/src/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/response/response.dart';
import 'package:test/test.dart';

void main() {
  test('error', () {
    final errorJson = '''{
  "data": null,
  "error": "checksum failed. Expected 2rq9g5, got smsgld.",
  "code": "internal_issue"
}''';

    final response = GetAddressResponse.fromJson(json.decode(errorJson));

    expect(response.data, isNull);
    expect(response.error, 'checksum failed. Expected 2rq9g5, got smsgld.');
    expect(response.code, equals(GatewayCode.internalIssue));
  });

  group('addresses', () {
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
  });
}
