import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_nonce.g.dart';

@immutable
@JsonSerializable()
class NonceData {
  final int nonce;

  const NonceData(this.nonce);

  factory NonceData.fromJson(Map<String, dynamic> json) =>
      _$NonceDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetAddressNonceResponse extends GatewayResponse<NonceData> {
  const GetAddressNonceResponse(super.data, super.error, super.code);

  factory GetAddressNonceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressNonceResponseFromJson(json);
}
