import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'send_transaction.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class TransactionHashData {
  final String txHash;

  const TransactionHashData(this.txHash);

  factory TransactionHashData.fromJson(Map<String, dynamic> json) =>
      _$TransactionHashDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionHashDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class SendTransactionResponse extends GatewayResponse<TransactionHashData> {
  const SendTransactionResponse(super.data, super.code);

  factory SendTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$SendTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendTransactionResponseToJson(this);
}
