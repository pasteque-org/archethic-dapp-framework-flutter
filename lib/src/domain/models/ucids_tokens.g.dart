// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ucids_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UcidsTokens _$UcidsTokensFromJson(Map<String, dynamic> json) => _UcidsTokens(
  mainnet: Map<String, int>.from(json['mainnet'] as Map),
  testnet: Map<String, int>.from(json['testnet'] as Map),
  devnet: Map<String, int>.from(json['devnet'] as Map),
);

Map<String, dynamic> _$UcidsTokensToJson(_UcidsTokens instance) =>
    <String, dynamic>{
      'mainnet': instance.mainnet,
      'testnet': instance.testnet,
      'devnet': instance.devnet,
    };
