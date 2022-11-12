import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_storage_value_for_address.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class ValueData {
  final String value;

  const ValueData(this.value);

  factory ValueData.fromJson(Map<String, dynamic> json) =>
      _$ValueDataFromJson(json);

  Map<String, dynamic> toJson() => _$ValueDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetStorageValueForAddressResponse extends GatewayResponse<ValueData> {
  const GetStorageValueForAddressResponse(super.data, super.code);

  factory GetStorageValueForAddressResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetStorageValueForAddressResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetStorageValueForAddressResponseToJson(this);
}
