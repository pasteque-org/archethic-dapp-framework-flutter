import 'package:archethic_dapp_framework_flutter/src/domain/models/ae_token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ae_token_pair.freezed.dart';
part 'ae_token_pair.g.dart';

/// A JSON converter for [AETokenPair].
///
/// This class is responsible for serializing and deserializing [AETokenPair]
/// instances to and from JSON format.
class AETokenPairJsonConverter
    implements JsonConverter<AETokenPair, Map<String, dynamic>> {
  /// Creates an instance of [AETokenPairJsonConverter].
  const AETokenPairJsonConverter();

  @override
  AETokenPair fromJson(final Map<String, dynamic> json) {
    return AETokenPair.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(final AETokenPair object) => object.toJson();
}

/// Represents a pair of tokens in the Archethic blockchain ecosystem.
///
/// This class is used to model two tokens that are part of a liquidity pair
/// or any other relationship requiring two tokens.
///
/// Example:
/// ```dart
/// final pair = AETokenPair(
///   token1: AEToken(name: 'Token 1', symbol: 'TKN1'),
///   token2: AEToken(name: 'Token 2', symbol: 'TKN2'),
/// );
/// ```
@freezed
abstract class AETokenPair with _$AETokenPair {
  /// Creates an [AETokenPair] instance.
  ///
  /// Both [token1] and [token2] must be provided and are required to be of type [AEToken].

  const factory AETokenPair({
    /// The first token in the pair.
    @AETokenJsonConverter() required final AEToken token1,

    /// The second token in the pair.
    @AETokenJsonConverter() required final AEToken token2,
  }) = _AETokenPair;

  const AETokenPair._();

  /// Creates an [AETokenPair] instance from a JSON object.
  factory AETokenPair.fromJson(final Map<String, dynamic> json) =>
      _$AETokenPairFromJson(json);
}
