// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressData _$AddressDataFromJson(Map<String, dynamic> json) => AddressData(
      json['address'] as String,
      json['nonce'] as int,
      json['balance'] as String,
      json['username'] as String,
      json['code'] as String,
      json['codeHash'] as String,
      json['rootHash'] as String,
      json['codeMetadata'] as String,
      json['developerReward'] as String,
      json['ownerAddress'] as String,
    );

Map<String, dynamic> _$AddressDataToJson(AddressData instance) =>
    <String, dynamic>{
      'address': instance.address,
      'nonce': instance.nonce,
      'balance': instance.balance,
      'username': instance.username,
      'code': instance.code,
      'codeHash': instance.codeHash,
      'rootHash': instance.rootHash,
      'codeMetadata': instance.codeMetadata,
      'developerReward': instance.developerReward,
      'ownerAddress': instance.ownerAddress,
    };

AccountData _$AccountDataFromJson(Map<String, dynamic> json) => AccountData(
      AddressData.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountDataToJson(AccountData instance) =>
    <String, dynamic>{
      'account': instance.account,
    };

GetAddressResponse _$GetAddressResponseFromJson(Map<String, dynamic> json) =>
    GetAddressResponse(
      json['data'] == null
          ? null
          : AccountData.fromJson(json['data'] as Map<String, dynamic>),
      json['error'] as String,
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetAddressResponseToJson(GetAddressResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
};
