import 'package:archethic_dapp_framework_flutter/src/domain/models/crypto_price.dart';

abstract class CoinPriceRepositoryInterface {
  Future<CryptoPrice?> fetchPrices();

  double getPriceFromUcid(final int ucid, final CryptoPrice coinPrice);
}
