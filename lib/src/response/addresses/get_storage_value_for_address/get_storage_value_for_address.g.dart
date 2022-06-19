// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_storage_value_for_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueData _$ValueDataFromJson(Map<String, dynamic> json) => ValueData(
      json['value'] as String,
    );

Map<String, dynamic> _$ValueDataToJson(ValueData instance) => <String, dynamic>{
      'value': instance.value,
    };

GetStorageValueForAddressResponse _$GetStorageValueForAddressResponseFromJson(
        Map<String, dynamic> json) =>
    GetStorageValueForAddressResponse(
      json['data'] == null
          ? null
          : ValueData.fromJson(json['data'] as Map<String, dynamic>),
      json['error'] as String,
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetStorageValueForAddressResponseToJson(
        GetStorageValueForAddressResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
};
