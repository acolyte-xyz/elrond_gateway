import 'dart:convert';

import 'package:elrond_gateway/src/constants.dart';
import 'package:elrond_gateway/src/repositories/request/transactions/transaction.dart';
import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:elrond_gateway/src/repositories/transactions.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('send transaction', () {
    test('200', () async {
      final responseData = {
        'data': {
          'txHash':
              '6c41c71946b5b428c2cfb560e3ea425f8a00345de4bb2eb1b784387790914277'
        },
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final transactionsRepository =
          Transactions(testnetGatewayBaseUrl, mockClient);

      final transaction = TransactionRequest(
        1,
        'v1.0.141',
        42,
        '100000000000000000',
        'erd1njqj2zggfup4nl83x0nfgqjkjserm7mjyxdx5vzkm8k0gkh40ezqtfz9lg',
        'erd1cux02zersde0l7hhklzhywcxk4u9n4py5tdxyx7vrvhnza2r4gmq4vw35r',
        1000000000,
        70000,
        '93207c579bf57be03add632b0e1624a73576eeda8a1687e0fa286f03eb1a17ffb125ccdb008a264c402f074a360442c7a034e237679322f62268b614e926d10f',
      );
      final result = await transactionsRepository.sendTransaction(
        transaction: transaction,
      );
      expect(
          result.data.txHash,
          equals(
              '6c41c71946b5b428c2cfb560e3ea425f8a00345de4bb2eb1b784387790914277'));
      expect(result.code, equals(GatewayCode.successful));
    });

    test('400', () async {
      final responseData = {
        'data': null,
        'error': 'transaction generation failed: ed25519: invalid signature',
        'code': 'bad_request'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 400));
      final transactionsRepository =
          Transactions(testnetGatewayBaseUrl, mockClient);

      final transaction = TransactionRequest(
        1,
        'v1.0.141',
        42,
        '100000000000000000',
        'erd1njqj2zggfup4nl83x0nfgqjkjserm7mjyxdx5vzkm8k0gkh40ezqtfz9lg',
        'erd1cux02zersde0l7hhklzhywcxk4u9n4py5tdxyx7vrvhnza2r4gmq4vw35r',
        1000000000,
        70000,
        '93207c579bf57be03add632b0e1624a73576eeda8a1687e0fa286f03eb1a17ffb125ccdb008a264c402f074a360442c7a034e237679322f62268b614e926d10f',
      );
      try {
        await transactionsRepository.sendTransaction(
          transaction: transaction,
        );
      } on GatewayException catch (e) {
        expect(e.code, equals(GatewayCode.badRequest));
        expect(
            e.error,
            equals(
                'transaction generation failed: ed25519: invalid signature'));
      }
    });
  });

  group('send multiple transactions', () {
    test('200', () async {
      final responseData = {
        'data': {
          'numOfSentTxs': 2,
          'txsHashes': {
            '0':
                '6c41c71946b5b428c2cfb560e3ea425f8a00345de4bb2eb1b784387790914277',
            '1':
                'fa8195bae93d4609a6fc5972a7a6176feece39a6c4821acae2276701aee12fb0'
          }
        },
        'error': '',
        'code': 'successful'
      };
      final mockClient = MockClient(
          (request) async => Response(json.encode(responseData), 200));
      final transactionsRepository =
          Transactions(testnetGatewayBaseUrl, mockClient);

      final transaction = TransactionRequest(
        1,
        'v1.0.141',
        42,
        '100000000000000000',
        'erd1njqj2zggfup4nl83x0nfgqjkjserm7mjyxdx5vzkm8k0gkh40ezqtfz9lg',
        'erd1cux02zersde0l7hhklzhywcxk4u9n4py5tdxyx7vrvhnza2r4gmq4vw35r',
        1000000000,
        70000,
        '93207c579bf57be03add632b0e1624a73576eeda8a1687e0fa286f03eb1a17ffb125ccdb008a264c402f074a360442c7a034e237679322f62268b614e926d10f',
      );
      final result = await transactionsRepository.sendMultipleTransactions(
        transactions: [transaction, transaction],
      );
      expect(result.data.numOfSentTxs, equals(2));
      expect(result.data.txsHashes.length, equals(2));
      expect(
          result.data.txsHashes['0'],
          equals(
              '6c41c71946b5b428c2cfb560e3ea425f8a00345de4bb2eb1b784387790914277'));
      expect(
          result.data.txsHashes['1'],
          equals(
              'fa8195bae93d4609a6fc5972a7a6176feece39a6c4821acae2276701aee12fb0'));
      expect(result.code, equals(GatewayCode.successful));
    });
  });
}
