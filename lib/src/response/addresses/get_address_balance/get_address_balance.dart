import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address_balance.g.dart';

@immutable
@JsonSerializable()
class BalanceData {
  final String balance;

  const BalanceData(this.balance);

  factory BalanceData.fromJson(Map<String, dynamic> json) =>
      _$BalanceDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetAddressBalanceResponse extends GatewayResponse<BalanceData> {
  const GetAddressBalanceResponse(super.data, super.error, super.code);

  factory GetAddressBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressBalanceResponseFromJson(json);
}
