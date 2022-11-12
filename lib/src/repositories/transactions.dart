import 'dart:convert';

import 'package:elrond_gateway/elrond_gateway.dart';
import 'package:http/http.dart';

/// Send Transactions to the Blockchain and query information about them.
class Transactions {
  final String _baseUrl;
  final Client _client;

  const Transactions(this._baseUrl, this._client);

  /// This endpoint allows one to send a signed Transaction to the Blockchain.
  Future<SendTransactionResponse> sendTransaction(
      {required final TransactionRequest transaction}) async {
    final response = await _client.post(
      Uri.parse('$_baseUrl/transaction/send'),
      headers: {
        'content-type': 'application/json',
      },
      body: json.encode(transaction.toJson()),
    );
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return SendTransactionResponse.fromJson(body);
  }

  /// This endpoint allows one to send a bulk of Transactions to the Blockchain.
  ///
  /// /!\ For Nodes (Observers or Validators with the HTTP API enabled), this endpoint only accepts transactions whose sender is in the Node's Shard.
  Future<SendMultipleTransactionsResponse> sendMultipleTransactions(
      {required final List<TransactionRequest> transactions}) async {
    final response = await _client.post(
      Uri.parse('$_baseUrl/transaction/send-multiple'),
      headers: {
        'content-type': 'application/json',
      },
      body: json.encode(transactions.map((e) => e.toJson()).toList()),
    );
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return SendMultipleTransactionsResponse.fromJson(body);
  }
}
