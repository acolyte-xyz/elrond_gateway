// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionHashData _$TransactionHashDataFromJson(Map<String, dynamic> json) =>
    TransactionHashData(
      json['txHash'] as String,
    );

Map<String, dynamic> _$TransactionHashDataToJson(
        TransactionHashData instance) =>
    <String, dynamic>{
      'txHash': instance.txHash,
    };

SendTransactionResponse _$SendTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    SendTransactionResponse(
      TransactionHashData.fromJson(json['data'] as Map<String, dynamic>),
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$SendTransactionResponseToJson(
        SendTransactionResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
  GatewayCode.badRequest: 'bad_request',
};
