import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_price.freezed.dart';
part 'crypto_price.g.dart';

/// Represents the price data for various cryptocurrencies.
///
/// This class provides a structured representation of cryptocurrency prices
/// at a specific point in time. The prices include Bitcoin, Matic (Pol), Ethereum,
/// Binance Coin (BNB), USD Coin (USDC), and EURE.
///
/// Example:
/// ```dart
/// final price = CryptoPrice(
///   timestamp: 1672531199,
///   bitcoin: 40000.0,
///   matic: 1.5,
///   ethereum: 2500.0,
///   bnb: 350.0,
///   usdc: 1.0,
///   eure: 1.1,
/// );
/// ```
@freezed
abstract class CryptoPrice with _$CryptoPrice {
  /// Creates a [CryptoPrice] instance.
  ///
  /// The [timestamp] represents the time when the price data was recorded.
  /// All cryptocurrency prices default to `0.0` if not specified.
  factory CryptoPrice({
    /// The timestamp of the price data, represented as a UNIX timestamp.
    final int? timestamp,

    /// The price of Bitcoin (BTC) in USD or the relevant currency.
    @Default(0.0) final double bitcoin,

    /// The price of Matic (Polygon) in USD or the relevant currency.
    @Default(0.0) final double matic,

    /// The price of Ethereum (ETH) in USD or the relevant currency.
    @Default(0.0) final double ethereum,

    /// The price of Binance Coin (BNB) in USD or the relevant currency.
    @Default(0.0) final double bnb,

    /// The price of USD Coin (USDC) in USD or the relevant currency.
    @Default(0.0) final double usdc,

    /// The price of EURE (a euro-backed stablecoin) in USD or the relevant currency.
    @Default(0.0) final double eure,
  }) = _CryptoPrice;

  /// Creates a [CryptoPrice] instance from a JSON object.
  factory CryptoPrice.fromJson(final Map<String, dynamic> json) =>
      _$CryptoPriceFromJson(json);
}
