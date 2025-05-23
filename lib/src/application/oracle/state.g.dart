// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArchethicOracleUCO _$ArchethicOracleUCOFromJson(Map<String, dynamic> json) =>
    _ArchethicOracleUCO(
      timestamp: (json['timestamp'] as num?)?.toInt() ?? 0,
      eur: (json['eur'] as num?)?.toDouble() ?? 0,
      usd: (json['usd'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ArchethicOracleUCOToJson(_ArchethicOracleUCO instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'eur': instance.eur,
      'usd': instance.usd,
    };
