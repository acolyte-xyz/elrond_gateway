import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'response.g.dart';

enum GatewayCode {
  @JsonValue('successful')
  successful,

  @JsonValue('internal_issue')
  internalIssue,

  @JsonValue('bad_request')
  badRequest,
}

@immutable
@JsonSerializable(genericArgumentFactories: true)
class GatewayResponse<T> {
  final T data;
  final GatewayCode code;

  const GatewayResponse(this.data, this.code);
}

@immutable
@JsonSerializable()
class GatewayException implements Exception {
  final String error;
  final GatewayCode code;

  const GatewayException(this.error, this.code);

  factory GatewayException.fromJson(Map<String, dynamic> json) =>
      _$GatewayExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$GatewayExceptionToJson(this);
}
