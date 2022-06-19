import 'package:elrond_gateway/src/response/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'get_address.g.dart';

@immutable
@JsonSerializable()
class AddressData {
  final String address;
  final int nonce;
  final String balance;
  final String username;
  final String code;
  final String codeHash;
  final String rootHash;
  final String codeMetadata;
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
}

@immutable
@JsonSerializable()
class AccountData {
  final AddressData account;

  const AccountData(this.account);

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);
}

@immutable
@JsonSerializable()
class GetAddressResponse extends GatewayResponse<AccountData> {
  const GetAddressResponse(super.data, super.error, super.code);

  factory GetAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseFromJson(json);
}
