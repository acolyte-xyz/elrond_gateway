// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    TransactionData(
      json['hash'] as String,
      json['fee'] as String,
      json['miniBlockHash'] as String,
      json['nonce'] as int,
      json['round'] as int,
      json['value'] as String,
      json['receiver'] as String,
      json['sender'] as String,
      json['receiverShard'] as int,
      json['senderShard'] as int,
      json['gasPrice'] as int,
      json['gasLimit'] as int,
      json['gasUsed'] as int,
      json['data'] as String,
      json['signature'] as String,
      json['timestamp'] as int,
      json['status'] as String,
      json['scResults'] as String?,
    );

Map<String, dynamic> _$TransactionDataToJson(TransactionData instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'fee': instance.fee,
      'miniBlockHash': instance.miniBlockHash,
      'nonce': instance.nonce,
      'round': instance.round,
      'value': instance.value,
      'receiver': instance.receiver,
      'sender': instance.sender,
      'receiverShard': instance.receiverShard,
      'senderShard': instance.senderShard,
      'gasPrice': instance.gasPrice,
      'gasLimit': instance.gasLimit,
      'gasUsed': instance.gasUsed,
      'data': instance.data,
      'signature': instance.signature,
      'timestamp': instance.timestamp,
      'status': instance.status,
      'scResults': instance.scResults,
    };

TransactionsData _$TransactionsDataFromJson(Map<String, dynamic> json) =>
    TransactionsData(
      (json['transactions'] as List<dynamic>)
          .map((e) => TransactionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransactionsDataToJson(TransactionsData instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };

GetAddressTransactionsResponse _$GetAddressTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAddressTransactionsResponse(
      TransactionsData.fromJson(json['data'] as Map<String, dynamic>),
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GetAddressTransactionsResponseToJson(
        GetAddressTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
  GatewayCode.badRequest: 'bad_request',
};
