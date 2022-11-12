// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_multiple_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsHashData _$TransactionsHashDataFromJson(
        Map<String, dynamic> json) =>
    TransactionsHashData(
      json['numOfSentTxs'] as int,
      Map<String, String>.from(json['txsHashes'] as Map),
    );

Map<String, dynamic> _$TransactionsHashDataToJson(
        TransactionsHashData instance) =>
    <String, dynamic>{
      'numOfSentTxs': instance.numOfSentTxs,
      'txsHashes': instance.txsHashes,
    };

SendMultipleTransactionsResponse _$SendMultipleTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    SendMultipleTransactionsResponse(
      TransactionsHashData.fromJson(json['data'] as Map<String, dynamic>),
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$SendMultipleTransactionsResponseToJson(
        SendMultipleTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
  GatewayCode.badRequest: 'bad_request',
};
