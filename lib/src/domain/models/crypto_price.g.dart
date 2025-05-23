// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CryptoPrice _$CryptoPriceFromJson(Map<String, dynamic> json) => _CryptoPrice(
  timestamp: (json['timestamp'] as num?)?.toInt(),
  bitcoin: (json['bitcoin'] as num?)?.toDouble() ?? 0.0,
  matic: (json['matic'] as num?)?.toDouble() ?? 0.0,
  ethereum: (json['ethereum'] as num?)?.toDouble() ?? 0.0,
  bnb: (json['bnb'] as num?)?.toDouble() ?? 0.0,
  usdc: (json['usdc'] as num?)?.toDouble() ?? 0.0,
  eure: (json['eure'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$CryptoPriceToJson(_CryptoPrice instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'bitcoin': instance.bitcoin,
      'matic': instance.matic,
      'ethereum': instance.ethereum,
      'bnb': instance.bnb,
      'usdc': instance.usdc,
      'eure': instance.eure,
    };
