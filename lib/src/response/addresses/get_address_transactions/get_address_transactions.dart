import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_transactions.g.dart';

@immutable
@JsonSerializable()
class TransactionData {
  final String hash;
  final String fee;
  final String miniBlockHash;
  final int nonce;
  final int round;
  final String value;
  final String receiver;
  final String sender;
  final int receiverShard;
  final int senderShard;
  final int gasPrice;
  final int gasLimit;
  final int gasUsed;
  final String data;
  final String signature;
  final int timestamp;
  final String status;
  final String? scResults;

  const TransactionData(
    this.hash,
    this.fee,
    this.miniBlockHash,
    this.nonce,
    this.round,
    this.value,
    this.receiver,
    this.sender,
    this.receiverShard,
    this.senderShard,
    this.gasPrice,
    this.gasLimit,
    this.gasUsed,
    this.data,
    this.signature,
    this.timestamp,
    this.status,
    this.scResults,
  );

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);
}

@immutable
@JsonSerializable()
class TransactionsData {
  final List<TransactionData> transactions;

  const TransactionsData(this.transactions);

  factory TransactionsData.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetAddressTransactionsResponse extends GatewayResponse<TransactionsData> {
  const GetAddressTransactionsResponse(super.data, super.error, super.code);

  factory GetAddressTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressTransactionsResponseFromJson(json);
}
