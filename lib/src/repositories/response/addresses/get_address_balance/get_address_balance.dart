import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_balance.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class BalanceData {
  final String balance;

  const BalanceData(this.balance);

  factory BalanceData.fromJson(Map<String, dynamic> json) =>
      _$BalanceDataFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetAddressBalanceResponse extends GatewayResponse<BalanceData> {
  const GetAddressBalanceResponse(super.data, super.code);

  factory GetAddressBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressBalanceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressBalanceResponseToJson(this);
}
