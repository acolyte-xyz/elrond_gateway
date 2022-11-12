import 'dart:convert';

import 'package:elrond_gateway/src/repositories/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/repositories/response/addresses/get_address_balance/get_address_balance.dart';
import 'package:elrond_gateway/src/repositories/response/addresses/get_address_nonce/get_address_nonce.dart';
import 'package:elrond_gateway/src/repositories/response/addresses/get_address_transactions/get_address_transactions.dart';
import 'package:elrond_gateway/src/repositories/response/addresses/get_all_storage_for_address/get_all_storage_for_address.dart';
import 'package:elrond_gateway/src/repositories/response/addresses/get_storage_value_for_address/get_storage_value_for_address.dart';
import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:http/http.dart';

/// Get information about an Elrond Address.
class Addresses {
  final String _baseUrl;
  final Client _client;

  const Addresses(this._baseUrl, this._client);

  /// This endpoint allows one to retrieve basic information about an Address (Account).
  Future<GetAddressResponse> getAddress(
      {required final String bech32Address}) async {
    final response =
        await _client.get(Uri.parse('$_baseUrl/address/$bech32Address'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetAddressResponse.fromJson(json.decode(response.body));
  }

  /// This endpoint allows one to retrieve the nonce of an Address.
  Future<GetAddressNonceResponse> getAddressNonce(
      {required final String bech32Address}) async {
    final response =
        await _client.get(Uri.parse('$_baseUrl/address/$bech32Address/nonce'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetAddressNonceResponse.fromJson(json.decode(response.body));
  }

  /// This endpoint allows one to retrieve the balance of an Address.
  Future<GetAddressBalanceResponse> getAddressBalance(
      {required final String bech32Address}) async {
    final response = await _client
        .get(Uri.parse('$_baseUrl/address/$bech32Address/balance'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetAddressBalanceResponse.fromJson(json.decode(response.body));
  }

  /// This endpoint allows one to retrieve the latest 20 Transactions sent from an Address.
  Future<GetAddressTransactionsResponse> getAddressTransactions(
      {required final String bech32Address}) async {
    final response = await _client
        .get(Uri.parse('$_baseUrl/address/$bech32Address/transactions'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetAddressTransactionsResponse.fromJson(json.decode(response.body));
  }

  /// This endpoint allows one to retrieve a value stored within the Blockchain for a given Address.
  Future<GetStorageValueForAddressResponse> getStorageValueForAddress(
      {required final String bech32Address, required final String key}) async {
    final response = await _client
        .get(Uri.parse('$_baseUrl/address/$bech32Address/key/$key'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetStorageValueForAddressResponse.fromJson(
        json.decode(response.body));
  }

  /// This endpoint allows one to retrieve all the key-value pairs stored under a given account.
  Future<GetAllStorageForAddressResponse> getAllStorageForAddress(
      {required final String bech32Address}) async {
    final response =
        await _client.get(Uri.parse('$_baseUrl/address/$bech32Address/keys'));
    final bodyResponse = response.body;
    final body = json.decode(bodyResponse);
    if (response.statusCode != 200) {
      throw GatewayException.fromJson(body);
    }
    return GetAllStorageForAddressResponse.fromJson(json.decode(response.body));
  }
}
