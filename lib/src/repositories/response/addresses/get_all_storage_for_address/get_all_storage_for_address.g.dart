// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_storage_for_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PairsData _$PairsDataFromJson(Map<String, dynamic> json) => PairsData(
      json['pairs'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$PairsDataToJson(PairsData instance) => <String, dynamic>{
      'pairs': instance.pairs,
    };

GetAllStorageForAddressResponse _$GetAllStorageForAddressResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllStorageForAddressResponse(
      PairsData.fromJson(json['data'] as Map<String, dynamic>),
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetAllStorageForAddressResponseToJson(
        GetAllStorageForAddressResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
  GatewayCode.badRequest: 'bad_request',
};
