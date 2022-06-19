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
}
