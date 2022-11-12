import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'send_multiple_transactions.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class TransactionsHashData {
  final int numOfSentTxs;
  final Map<String, String> txsHashes;

  const TransactionsHashData(this.numOfSentTxs, this.txsHashes);

  factory TransactionsHashData.fromJson(Map<String, dynamic> json) =>
      _$TransactionsHashDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsHashDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class SendMultipleTransactionsResponse
    extends GatewayResponse<TransactionsHashData> {
  const SendMultipleTransactionsResponse(super.data, super.code);

  factory SendMultipleTransactionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SendMultipleTransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendMultipleTransactionsResponseToJson(this);
}
