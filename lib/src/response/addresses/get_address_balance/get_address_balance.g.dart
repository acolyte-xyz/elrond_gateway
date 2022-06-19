// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceData _$BalanceDataFromJson(Map<String, dynamic> json) => BalanceData(
      json['balance'] as String,
    );

Map<String, dynamic> _$BalanceDataToJson(BalanceData instance) =>
    <String, dynamic>{
      'balance': instance.balance,
    };

GetAddressBalanceResponse _$GetAddressBalanceResponseFromJson(
        Map<String, dynamic> json) =>
    GetAddressBalanceResponse(
      json['data'] == null
          ? null
          : BalanceData.fromJson(json['data'] as Map<String, dynamic>),
      json['error'] as String,
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetAddressBalanceResponseToJson(
        GetAddressBalanceResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
};
