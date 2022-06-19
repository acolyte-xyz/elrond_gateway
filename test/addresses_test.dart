import 'dart:convert';

import 'package:elrond_gateway/src/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_balance/get_address_balance.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_nonce/get_address_nonce.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_transactions/get_address_transactions.dart';
import 'package:elrond_gateway/src/response/addresses/get_all_storage_for_address/get_all_storage_for_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_storage_value_for_address/get_storage_value_for_address.dart';
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

  test('get address balance', () {
    final getAddressBalanceJson = '''{
  "data": {
    "balance": "100000000000000000000"
  },
  "error": "",
  "code": "successful"
}''';

    final response =
        GetAddressBalanceResponse.fromJson(json.decode(getAddressBalanceJson));
    expect(response.data, isNotNull);
    expect(response.data!.balance, equals('100000000000000000000'));
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });

  test('get address transactions', () {
    final getAddressBalanceJson = '''{
  "data": {
    "transactions": [
      {
        "hash": "1a3e...",
        "fee": "10000000000000000",
        "miniBlockHash": "9673...",
        "nonce": 68,
        "round": 33688,
        "value": "1000000000000000000",
        "receiver": "erd1...",
        "sender": "erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz",
        "receiverShard": 0,
        "senderShard": 0,
        "gasPrice": 200000000000,
        "gasLimit": 50000,
        "gasUsed": 50000,
        "data": "",
        "signature": "ed75...",
        "timestamp": 1591258128,
        "status": "success",
        "scResults": null
      },
      {
        "hash": "d72d...",
        "fee": "10000000000000000",
        "miniBlockHash": "fd45...",
        "nonce": 67,
        "round": 27353,
        "value": "100000000000000000000000000",
        "receiver": "erd1...",
        "sender": "erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz",
        "receiverShard": 1,
        "senderShard": 0,
        "gasPrice": 200000000000,
        "gasLimit": 50000,
        "gasUsed": 50000,
        "data": "",
        "signature": "bb98...",
        "timestamp": 1591220142,
        "status": "success",
        "scResults": null
      }
    ]
  },
  "error": "",
  "code": "successful"
}''';

    final response = GetAddressTransactionsResponse.fromJson(
        json.decode(getAddressBalanceJson));
    expect(response.data, isNotNull);
    expect(response.data!.transactions.length, equals(2));
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });

  test('get storage value for address', () {
    final getAddressBalanceJson = '''{
  "data": {
    "value": "abba"
  },
  "error": "",
  "code": "successful"
}''';

    final response = GetStorageValueForAddressResponse.fromJson(
        json.decode(getAddressBalanceJson));
    expect(response.data, isNotNull);
    expect(response.data!.value, equals('abba'));
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });

  test('get all storage for address', () {
    final getAddressBalanceJson = '''{
  "data": {
    "pairs": {
      "abba": "6f6b"
    }
  },
  "error": "",
  "code": "successful"
}''';

    final response = GetAllStorageForAddressResponse.fromJson(
        json.decode(getAddressBalanceJson));
    expect(response.data, isNotNull);
    expect(response.data!.pairs.containsKey('abba'), isTrue);
    expect(response.data!.pairs.containsValue('6f6b'), isTrue);
    expect(response.error, isEmpty);
    expect(response.code, equals(GatewayCode.successful));
  });
}
