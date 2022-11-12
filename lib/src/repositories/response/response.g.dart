// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GatewayResponse<T> _$GatewayResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GatewayResponse<T>(
      fromJsonT(json['data']),
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GatewayResponseToJson<T>(
  GatewayResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'code': _$GatewayCodeEnumMap[instance.code],
    };

const _$GatewayCodeEnumMap = {
  GatewayCode.successful: 'successful',
  GatewayCode.internalIssue: 'internal_issue',
  GatewayCode.badRequest: 'bad_request',
};

GatewayException _$GatewayExceptionFromJson(Map<String, dynamic> json) =>
    GatewayException(
      json['error'] as String,
      $enumDecode(_$GatewayCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$GatewayExceptionToJson(GatewayException instance) =>
    <String, dynamic>{
      'error': instance.error,
      'code': _$GatewayCodeEnumMap[instance.code],
    };
