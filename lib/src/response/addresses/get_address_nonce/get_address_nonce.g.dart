// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_nonce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonceData _$NonceDataFromJson(Map<String, dynamic> json) => NonceData(
      json['nonce'] as int,
    );

Map<String, dynamic> _$NonceDataToJson(NonceData instance) => <String, dynamic>{
      'nonce': instance.nonce,
    };

GetAddressNonceResponse _$GetAddressNonceResponseFromJson(
        Map<String, dynamic> json) =>
    GetAddressNonceResponse(
      json['data'] == null
          ? null
          : NonceData.fromJson(json['data'] as Map<String, dynamic>),
      json['error'] as String,
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetAddressNonceResponseToJson(
        GetAddressNonceResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
};
