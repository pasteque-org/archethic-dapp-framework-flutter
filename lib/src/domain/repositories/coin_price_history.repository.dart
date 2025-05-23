import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/market_price_history.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/result.dart';

abstract class CoinPriceHistoryRepositoryInterface {
  Future<Result<List<PriceHistoryValue>, Failure>> getWithInterval({
    required final MarketPriceHistoryInterval interval,
    required final int ucid,
  });
}
