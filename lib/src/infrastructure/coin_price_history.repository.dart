import 'dart:convert';

import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/market_price_history.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/result.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/repositories/coin_price_history.repository.dart';
import 'package:http/http.dart' as http;

class CoinPriceHistoryRepository
    implements CoinPriceHistoryRepositoryInterface {
  @override
  Future<Result<List<PriceHistoryValue>, Failure>> getWithInterval({
    required final MarketPriceHistoryInterval interval,
    required final int ucid,
  }) => Result.guard(() async {
    final url =
        'https://fas.archethic.net/api/v1/quotes/history?ucid=$ucid&interval=${_marketPriceHistoryIntervalToString(interval)}';
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        return _parsePriceHistoryValues(response.body);
      }
      // ignore: unused_catch_stack, empty_catches
    } on Exception catch (e, stacktrace) {}

    return [];
  });

  List<PriceHistoryValue> _parsePriceHistoryValues(final String responseBody) {
    final responseJson = jsonDecode(responseBody);
    final priceHistory = <PriceHistoryValue>[];

    if (responseJson['prices'] != null) {
      for (final entry in responseJson['prices']) {
        final time = DateTime.fromMillisecondsSinceEpoch(entry[0]);
        final num price = entry[1];
        priceHistory.add(PriceHistoryValue(price: price, time: time));
      }
    }

    return priceHistory;
  }

  String _marketPriceHistoryIntervalToString(
    final MarketPriceHistoryInterval interval,
  ) {
    switch (interval) {
      case MarketPriceHistoryInterval.hour:
        return 'hourly';
      case MarketPriceHistoryInterval.day:
        return 'daily';
      case MarketPriceHistoryInterval.week:
        return 'weekly';
      case MarketPriceHistoryInterval.twoWeeks:
        return 'biweekly';
      case MarketPriceHistoryInterval.month:
        return 'monthly';
      case MarketPriceHistoryInterval.twoMonths:
        return 'bimonthly';
      case MarketPriceHistoryInterval.year:
        return 'yearly';
    }
  }
}

extension CoinGeckoPriceHistoryConversion on MarketPriceHistoryInterval {
  Duration get duration {
    switch (this) {
      case MarketPriceHistoryInterval.hour:
        return const Duration(hours: 1);
      case MarketPriceHistoryInterval.day:
        return const Duration(days: 1);
      case MarketPriceHistoryInterval.week:
        return const Duration(days: 7);
      case MarketPriceHistoryInterval.twoWeeks:
        return const Duration(days: 14);
      case MarketPriceHistoryInterval.month:
        return const Duration(days: 30);
      case MarketPriceHistoryInterval.twoMonths:
        return const Duration(days: 60);
      case MarketPriceHistoryInterval.year:
        return const Duration(days: 365);
    }
  }
}
