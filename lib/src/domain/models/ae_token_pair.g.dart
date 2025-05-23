// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ae_token_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AETokenPair _$AETokenPairFromJson(Map<String, dynamic> json) => _AETokenPair(
  token1: const AETokenJsonConverter().fromJson(
    json['token1'] as Map<String, dynamic>,
  ),
  token2: const AETokenJsonConverter().fromJson(
    json['token2'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AETokenPairToJson(_AETokenPair instance) =>
    <String, dynamic>{
      'token1': const AETokenJsonConverter().toJson(instance.token1),
      'token2': const AETokenJsonConverter().toJson(instance.token2),
    };
