import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_all_storage_for_address.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class PairsData {
  final Map<String, dynamic> pairs;

  const PairsData(this.pairs);

  factory PairsData.fromJson(Map<String, dynamic> json) =>
      _$PairsDataFromJson(json);

  Map<String, dynamic> toJson() => _$PairsDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetAllStorageForAddressResponse extends GatewayResponse<PairsData> {
  const GetAllStorageForAddressResponse(super.data, super.code);

  factory GetAllStorageForAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllStorageForAddressResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllStorageForAddressResponseToJson(this);
}
