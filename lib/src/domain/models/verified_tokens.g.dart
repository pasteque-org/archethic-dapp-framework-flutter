// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedTokens _$VerifiedTokensFromJson(Map<String, dynamic> json) =>
    _VerifiedTokens(
      devnet:
          (json['devnet'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$VerifiedTokensToJson(_VerifiedTokens instance) =>
    <String, dynamic>{'devnet': instance.devnet};
