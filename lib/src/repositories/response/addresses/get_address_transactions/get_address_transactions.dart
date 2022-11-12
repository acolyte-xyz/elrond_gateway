import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_transactions.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
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
@JsonSerializable(explicitToJson: true)
class TransactionsData {
  final List<TransactionData> transactions;

  const TransactionsData(this.transactions);

  factory TransactionsData.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetAddressTransactionsResponse extends GatewayResponse<TransactionsData> {
  const GetAddressTransactionsResponse(super.data, super.code);

  factory GetAddressTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressTransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressTransactionsResponseToJson(this);
}
