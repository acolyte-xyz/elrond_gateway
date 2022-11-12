import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'transaction.g.dart';

@immutable
@JsonSerializable(includeIfNull: false)
class TransactionRequest {
  final int version;
  @JsonKey(name: 'chainID')
  final String chainId;
  final int nonce;
  final String value;
  final String sender;
  final String receiver;
  final int gasPrice;
  final int gasLimit;
  final String signature;
  final String? data;

  const TransactionRequest(
    this.version,
    this.chainId,
    this.nonce,
    this.value,
    this.sender,
    this.receiver,
    this.gasPrice,
    this.gasLimit,
    this.signature, {
    this.data,
  });

  Map<String, dynamic> toJson() => _$TransactionRequestToJson(this);
}
