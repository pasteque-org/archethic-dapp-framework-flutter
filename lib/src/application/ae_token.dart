import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:archethic_dapp_framework_flutter/src/domain/models/ae_token.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ae_token.g.dart';

/// Estimates the value of a token in fiat currency.
///
/// This provider fetches the token's price in USD based on its symbol and address.
/// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
/// - For other tokens, the price is fetched using the Coin Price provider.
///
/// Example:
/// ```dart
/// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
/// ```
@riverpod
Future<double> _estimateTokenInFiat(final Ref ref, final AEToken token) async {
  if (token.symbol == 'UCO') {
    // Fetch the UCO price from the Archethic Oracle.
    final archethicOracleUCO = await ref.watch(
      aedappfm.ArchethicOracleUCOProviders.archethicOracleUCO.future,
    );

    return archethicOracleUCO.usd;
  } else {
    // Fetch the token price from the Coin Price provider.
    return await ref.watch(
      aedappfm.CoinPriceProviders.coinPrice(address: token.address!).future,
    );
  }
}

/// A collection of providers for managing AEToken-related functionalities.
///
/// Example usage:
/// ```dart
/// final priceInFiat = await ref.read(AETokensProviders.estimateTokenInFiat(token));
/// ```
abstract class AETokensProviders {
  /// Provider to estimate the fiat value of a token.
  static const estimateTokenInFiat = _estimateTokenInFiatProvider;
}
