import 'package:dio/dio.dart';
import 'package:elrond_gateway/src/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_balance/get_address_balance.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_nonce/get_address_nonce.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_transactions/get_address_transactions.dart';
import 'package:elrond_gateway/src/response/addresses/get_all_storage_for_address/get_all_storage_for_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_storage_value_for_address/get_storage_value_for_address.dart';
import 'package:retrofit/retrofit.dart';

part 'addresses.g.dart';

@RestApi(baseUrl: 'https://gateway.elrond.com')
abstract class Addresses {
  factory Addresses(Dio dio, {String baseUrl}) = _Addresses;

  @GET('/address/{bech32Address}')
  Future<GetAddressResponse> getAddress(@Path() String bech32Address);

  @GET('/address/{bech32Address}/nonce')
  Future<GetAddressNonceResponse> getAddressNonce(@Path() String bech32Address);

  @GET('/address/{bech32Address}/balance')
  Future<GetAddressBalanceResponse> getAddressBalance(
      @Path() String bech32Address);

  @GET('/address/{bech32Address}/transactions')
  Future<GetAddressTransactionsResponse> getAddressTransactions(
      @Path() String bech32Address);

  @GET('/address/{bech32Address}/key/{key}')
  Future<GetStorageValueForAddressResponse> getStorageValueForAddress(
      @Path() String bech32Address, @Path() String key);

  @GET('/address/{bech32Address}/keys')
  Future<GetAllStorageForAddressResponse> getAllStorageForAddress(
      @Path() String bech32Address);
}
