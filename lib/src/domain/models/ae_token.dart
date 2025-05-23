import 'package:archethic_dapp_framework_flutter/src/domain/models/ae_token_pair.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ae_token.freezed.dart';
part 'ae_token.g.dart';

/// Provides JSON conversion for [AEToken].
class AETokenJsonConverter
    implements JsonConverter<AEToken, Map<String, dynamic>> {
  const AETokenJsonConverter();

  @override
  AEToken fromJson(final Map<String, dynamic> json) {
    return AEToken.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(final AEToken object) => object.toJson();
}

/// A class representing a token in the Archethic network.
@freezed
abstract class AEToken with _$AEToken {
  /// Creates an [AEToken] instance.
  ///
  /// The [name], [symbol], [balance], [reserve], and [supply] have default values.
  /// If no [address] or [ucid] is provided, they will remain null.
  const factory AEToken({
    /// The name of the token.
    @Default('') final String name,

    /// The address of the token on the Archethic blockchain.
    final String? address,

    /// The icon URL or path representing the token.
    final String? icon,

    /// The symbol of the token.
    @Default('') final String symbol,

    /// The current balance of the token.
    @Default(0.0) final double balance,

    /// The reserve balance of the token.
    @Default(0.0) final double reserve,

    /// The total supply of the token.
    @Default(0.0) final double supply,

    /// Indicates if the token is verified.
    @Default(false) final bool isVerified,

    /// Indicates if the token is a liquidity provider token.
    @Default(false) final bool isLpToken,

    /// The pair of tokens for LP tokens.
    @AETokenPairJsonConverter() final AETokenPair? lpTokenPair,
    final int? ucid,
  }) = _AEToken;
  const AEToken._();

  /// Creates an [AEToken] instance from a JSON object.
  factory AEToken.fromJson(final Map<String, dynamic> json) =>
      _$AETokenFromJson(json);

  /// Determines if the token is the Archethic Universal Coin (UCO).
  bool get isUCO => symbol == 'UCO' && (address == null || address! == 'UCO');
}

/// A constant instance of the Archethic Universal Coin (UCO) token.
AEToken get ucoToken =>
    const AEToken(name: 'Universal Coin', symbol: 'UCO', ucid: 6887);
