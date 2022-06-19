import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_all_storage_for_address.g.dart';

@immutable
@JsonSerializable()
class PairsData {
  final Map<String, dynamic> pairs;

  const PairsData(this.pairs);

  factory PairsData.fromJson(Map<String, dynamic> json) =>
      _$PairsDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetAllStorageForAddressResponse extends GatewayResponse<PairsData> {
  const GetAllStorageForAddressResponse(super.data, super.error, super.code);

  factory GetAllStorageForAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllStorageForAddressResponseFromJson(json);
}
