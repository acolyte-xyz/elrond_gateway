import 'dart:convert';

import 'package:elrond_gateway/src/constants.dart';
import 'package:elrond_gateway/src/repositories/addresses.dart';
import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('get address', () {
    test('200', () async {
      final responseData = {
        'data': {
          'account': {
            'address':
                'erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqylllslmq6y6',
            'nonce': 0,
            'balance': '100000000000000000000',
            'username': '',
            'code':
                '000000000000000000010000000000000000000000000000000000000004ffff',
            'codeHash': 'YspAmEhzTEaqNOZlw+E+bPQx4JnfLJk4Fa/gtKas5fI=',
            'rootHash': 'JF2QNq8wpVGijn9vvoSV+vGqTbuKVK1LIj7IlA21JXE=',
            'codeMetadata': 'BAA=',
            'developerReward': '5670000000000000',
            'ownerAddress':
                'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz'
          }
        },
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final addressesRepository = Addresses(testnetGatewayBaseUrl, mockClient);

      final result = await addressesRepository.getAddress(
          bech32Address:
              'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz');
      expect(result.data, isNotNull);
      expect(
        result.data.account.address,
        equals(
            'erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqylllslmq6y6'),
      );
      expect(result.code, equals(GatewayCode.successful));
    });
  });

  group('get address nonce', () {
    test('200', () async {
      final responseData = {
        'data': {'nonce': 12},
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final addressesRepository = Addresses(testnetGatewayBaseUrl, mockClient);

      final result = await addressesRepository.getAddressNonce(
          bech32Address:
              'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz');
      expect(result.data, isNotNull);
      expect(result.data.nonce, equals(12));
      expect(result.code, equals(GatewayCode.successful));
    });
  });

  group('get address transactions', () {
    test('200', () async {
      final responseData = {
        'data': {
          'transactions': [
            {
              'hash': '1a3e...',
              'fee': '10000000000000000',
              'miniBlockHash': '9673...',
              'nonce': 68,
              'round': 33688,
              'value': '1000000000000000000',
              'receiver': 'erd1...',
              'sender':
                  'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz',
              'receiverShard': 0,
              'senderShard': 0,
              'gasPrice': 200000000000,
              'gasLimit': 50000,
              'gasUsed': 50000,
              'data': '',
              'signature': 'ed75...',
              'timestamp': 1591258128,
              'status': 'success',
              'scResults': null
            },
            {
              'hash': 'd72d...',
              'fee': '10000000000000000',
              'miniBlockHash': 'fd45...',
              'nonce': 67,
              'round': 27353,
              'value': '100000000000000000000000000',
              'receiver': 'erd1...',
              'sender':
                  'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz',
              'receiverShard': 1,
              'senderShard': 0,
              'gasPrice': 200000000000,
              'gasLimit': 50000,
              'gasUsed': 50000,
              'data': '',
              'signature': 'bb98...',
              'timestamp': 1591220142,
              'status': 'success',
              'scResults': null
            }
          ]
        },
        'error': '',
        'code': 'successful'
      };

      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final addressesRepository = Addresses(testnetGatewayBaseUrl, mockClient);

      final result = await addressesRepository.getAddressTransactions(
          bech32Address:
              'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz');
      expect(result.data, isNotNull);
      expect(result.data.transactions.length, equals(2));
      expect(result.code, equals(GatewayCode.successful));
    });
  });

  group('get storage value for address', () {
    test('200', () async {
      final responseData = {
        'data': {'value': 'abba'},
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final addressesRepository = Addresses(testnetGatewayBaseUrl, mockClient);

      final result = await addressesRepository.getStorageValueForAddress(
        bech32Address:
            'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz',
        key: 'value',
      );
      expect(result.data, isNotNull);
      expect(result.data.value, equals('abba'));
      expect(result.code, equals(GatewayCode.successful));
    });
  });

  group('get all storage for address', () {
    test('200', () async {
      final responseData = {
        'data': {
          'pairs': {'abba': '6f6b'}
        },
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final addressesRepository = Addresses(testnetGatewayBaseUrl, mockClient);

      final result = await addressesRepository.getAllStorageForAddress(
        bech32Address:
            'erd1l453hd0gt5gzdp7czpuall8ggt2dcv5zwmfdf3sd3lguxseux2fsmsgldz',
      );
      expect(result.data, isNotNull);
      expect(result.data.pairs.containsKey('abba'), isTrue);
      expect(result.data.pairs.containsValue('6f6b'), isTrue);
      expect(result.code, equals(GatewayCode.successful));
    });
  });
}
