import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'response.g.dart';

enum GatewayCode {
  @JsonValue('successful')
  successful,

  @JsonValue('internal_issue')
  internalIssue,
}

@immutable
@JsonSerializable(genericArgumentFactories: true)
class GatewayResponse<T> {
  final T? data;
  final String error;
  final GatewayCode code;

  const GatewayResponse(this.data, this.error, this.code);
}
