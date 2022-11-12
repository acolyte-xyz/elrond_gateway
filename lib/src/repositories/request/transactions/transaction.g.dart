// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionRequest _$TransactionRequestFromJson(Map<String, dynamic> json) =>
    TransactionRequest(
      json['version'] as int,
      json['chainID'] as String,
      json['nonce'] as int,
      json['value'] as String,
      json['sender'] as String,
      json['receiver'] as String,
      json['gasPrice'] as int,
      json['gasLimit'] as int,
      json['signature'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$TransactionRequestToJson(TransactionRequest instance) {
  final val = <String, dynamic>{
    'version': instance.version,
    'chainID': instance.chainId,
    'nonce': instance.nonce,
    'value': instance.value,
    'sender': instance.sender,
    'receiver': instance.receiver,
    'gasPrice': instance.gasPrice,
    'gasLimit': instance.gasLimit,
    'signature': instance.signature,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}
