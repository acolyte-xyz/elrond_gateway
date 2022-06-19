import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_storage_value_for_address.g.dart';

@immutable
@JsonSerializable()
class ValueData {
  final int nonce;

  const ValueData(this.nonce);

  factory ValueData.fromJson(Map<String, dynamic> json) =>
      _$ValueDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetStorageValueForAddressResponse extends GatewayResponse<ValueData> {
  const GetStorageValueForAddressResponse(super.data, super.error, super.code);

  factory GetStorageValueForAddressResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetStorageValueForAddressResponseFromJson(json);
}
