// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ae_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AEToken _$AETokenFromJson(Map<String, dynamic> json) => _AEToken(
  name: json['name'] as String? ?? '',
  address: json['address'] as String?,
  icon: json['icon'] as String?,
  symbol: json['symbol'] as String? ?? '',
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
  reserve: (json['reserve'] as num?)?.toDouble() ?? 0.0,
  supply: (json['supply'] as num?)?.toDouble() ?? 0.0,
  isVerified: json['isVerified'] as bool? ?? false,
  isLpToken: json['isLpToken'] as bool? ?? false,
  lpTokenPair: _$JsonConverterFromJson<Map<String, dynamic>, AETokenPair>(
    json['lpTokenPair'],
    const AETokenPairJsonConverter().fromJson,
  ),
  ucid: (json['ucid'] as num?)?.toInt(),
);

Map<String, dynamic> _$AETokenToJson(_AEToken instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
  'icon': instance.icon,
  'symbol': instance.symbol,
  'balance': instance.balance,
  'reserve': instance.reserve,
  'supply': instance.supply,
  'isVerified': instance.isVerified,
  'isLpToken': instance.isLpToken,
  'lpTokenPair': _$JsonConverterToJson<Map<String, dynamic>, AETokenPair>(
    instance.lpTokenPair,
    const AETokenPairJsonConverter().toJson,
  ),
  'ucid': instance.ucid,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
