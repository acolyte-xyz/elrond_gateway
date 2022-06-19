import 'package:dio/dio.dart';
import 'package:elrond_gateway/src/response/addresses/get_address/get_address.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_balance/get_address_balance.dart';
import 'package:elrond_gateway/src/response/addresses/get_address_nonce/get_address_nonce.dart';
import 'package:retrofit/retrofit.dart';

part 'addresses.g.dart';

@RestApi(baseUrl: 'https://gateway.elrond.com')
abstract class Addresses {
  factory Addresses(Dio dio, {String baseUrl}) = _Addresses;

  @GET('/address/{bech32Address}')
  Future<GetAddressResponse> getAddress();

  @GET('/address/{bech32Address}/nonce')
  Future<GetAddressNonceResponse> getAddressNonce();

  @GET('/address/{bech32Address}/balance')
  Future<GetAddressBalanceResponse> getAddressBalance();
}
