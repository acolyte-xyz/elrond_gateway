import 'package:elrond_gateway/src/repositories/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class AddressData {
  final String address;
  final int nonce;
  final String balance;
  final String username;
  final String code;
  final String? codeHash;
  final String? rootHash;
  final String? codeMetadata;
  final String developerReward;
  final String ownerAddress;

  const AddressData(
    this.address,
    this.nonce,
    this.balance,
    this.username,
    this.code,
    this.codeHash,
    this.rootHash,
    this.codeMetadata,
    this.developerReward,
    this.ownerAddress,
  );

  factory AddressData.fromJson(Map<String, dynamic> json) =>
      _$AddressDataFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class AccountData {
  final AddressData account;

  const AccountData(this.account);

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDataToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class GetAddressResponse extends GatewayResponse<AccountData> {
  const GetAddressResponse(super.data, super.code);

  factory GetAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressResponseToJson(this);
}
