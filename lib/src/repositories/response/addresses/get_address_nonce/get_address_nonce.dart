import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_nonce.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class NonceData {
  final int nonce;

  const NonceData(this.nonce);

  factory NonceData.fromJson(Map<String, dynamic> json) =>
      _$NonceDataFromJson(json);

  Map<String, dynamic> toJson() => _$NonceDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetAddressNonceResponse extends GatewayResponse<NonceData> {
  const GetAddressNonceResponse(super.data, super.code);

  factory GetAddressNonceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressNonceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressNonceResponseToJson(this);
}
