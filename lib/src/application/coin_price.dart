import 'dart:async';

import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coin_price.g.dart';

/// A notifier responsible for managing and updating cryptocurrency prices.
///
/// This notifier fetches cryptocurrency prices from the repository at
/// regular intervals (1 minute) and updates the state with the latest prices.
@riverpod
class _CoinPricesNotifier extends _$CoinPricesNotifier {
  static final _logger = Logger('CoinPricesNotifier');

  /// A timer to periodically fetch prices.
  Timer? _timer;

  /// Builds the initial state and starts the periodic price update timer.
  @override
  CryptoPrice build() {
    // Ensure the timer stops when the notifier is disposed.
    ref.onDispose(stopTimer);

    // Start fetching prices periodically.
    startTimer();

    // Return an empty initial state.
    return CryptoPrice();
  }

  /// Starts the periodic price fetch timer.
  ///
  /// The prices are updated every minute using the repository.
  Future<void> startTimer() async {
    if (_timer != null) {
      return;
    }

    _logger.info('Start timer');
    state = (await ref.read(_coinPriceRepositoryProvider).fetchPrices())!;
    _timer = Timer.periodic(const Duration(minutes: 1), (_) async {
      state = (await ref.read(_coinPriceRepositoryProvider).fetchPrices())!;
    });
  }

  /// Stops the periodic price fetch timer.
  Future<void> stopTimer() async {
    _logger.info('Stop timer');
    if (_timer == null) {
      return;
    }
    _timer?.cancel();
    _timer = null;
  }
}

/// Provides an instance of [CoinPriceRepositoryImpl].
///
/// This repository is used to fetch cryptocurrency prices from an external source.
@riverpod
CoinPriceRepositoryImpl _coinPriceRepository(final Ref ref) =>
    CoinPriceRepositoryImpl();

/// Fetches the price of a cryptocurrency based on its address.
///
/// This provider retrieves the token's UCID and uses it to find the corresponding price.
/// If the UCID cannot be resolved, the price defaults to 0.
///
/// Example usage:
/// ```dart
/// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
/// ```
@riverpod
Future<double> _coinPrice(
  final Ref ref, {
  required final String address,
  final Environment? environment,
}) async {
  try {
    // Fetch the latest cryptocurrency prices.
    final coinPrice = ref.watch(CoinPriceProviders.coinPrices);

    // Resolve the UCID for the given address and environment.
    final ucid = await ref.watch(
      UcidsTokensProviders.ucid(
        address: address.toUpperCase(),
        environment: environment,
      ).future,
    );

    if (ucid == null) {
      return 0;
    }

    // Fetch the price for the resolved UCID.
    return ref
        .watch(_coinPriceRepositoryProvider)
        .getPriceFromUcid(ucid, coinPrice);
  } on Exception catch (_) {
    // Return 0 in case of an error.
    return 0;
  }
}

/// A collection of providers for managing cryptocurrency prices.
///
/// This class centralizes providers related to cryptocurrency price fetching
/// and management, making them easier to access and organize.
abstract class CoinPriceProviders {
  /// A provider that manages and updates cryptocurrency prices periodically.
  static final coinPrices = _coinPricesNotifierProvider;

  /// A provider that fetches the price of a specific cryptocurrency.
  static const coinPrice = _coinPriceProvider;
}
