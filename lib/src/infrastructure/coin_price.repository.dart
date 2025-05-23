import 'dart:convert';
import 'package:archethic_dapp_framework_flutter/src/domain/models/crypto_price.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/ucid.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/repositories/tokens/coin_price.repository.dart';
import 'package:http/http.dart' as http;

class CoinPriceRepositoryImpl implements CoinPriceRepositoryInterface {
  @override
  Future<CryptoPrice?> fetchPrices() async {
    // UCIDs
    // 3890 : MATIC
    // 1027 : Ethereum
    // 1839 : BNB
    // 3408 : USDC
    // 20920 : Monerium EURe

    const url = 'https://fas.archethic.net/api/v1/quotes/latest';
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        final pricesMap = _extractPriceMethods(response.body);
        final cryptoPrice = CryptoPrice.fromJson(pricesMap);
        return cryptoPrice.copyWith(
          timestamp: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        );
      }
      // ignore: unused_catch_stack, empty_catches
    } on Exception catch (e, stacktrace) {}

    return CryptoPrice();
  }

  // TODO(reddwarf03): Externalise this...
  @override
  double getPriceFromUcid(final int ucid, final CryptoPrice coinPrice) {
    if (ucid != 0) {
      switch (ucid) {
        case UCID.bitcoin:
          return coinPrice.bitcoin;
        case UCID.ethereum:
          return coinPrice.ethereum;
        case UCID.bnb:
          return coinPrice.bnb;
        case UCID.matic:
          return coinPrice.matic;
        case UCID.usdc:
          return coinPrice.usdc;
        case UCID.eure:
          return coinPrice.eure;
        default:
          return 0;
      }
    }
    return 0;
  }

  Map<String, double> _extractPriceMethods(final String responseBody) {
    final jsonData = json.decode(responseBody) as Map<String, dynamic>;
    return {
      'bitcoin': jsonData[UCID.bitcoin.toString()],
      'matic': jsonData[UCID.matic.toString()],
      'ethereum': jsonData[UCID.ethereum.toString()],
      'bnb': jsonData[UCID.bnb.toString()],
      'usdc': jsonData[UCID.usdc.toString()],
      'eure': jsonData[UCID.eure.toString()],
    };
  }
}
