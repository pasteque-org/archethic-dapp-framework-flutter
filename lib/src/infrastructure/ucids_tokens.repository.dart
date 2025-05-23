import 'dart:convert';

import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/ucids_tokens.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/repositories/tokens/ucids_tokens.repository.dart';
import 'package:flutter/services.dart';

class UcidsTokensRepositoryImpl implements UcidsTokensRepositoryInterface {
  @override
  Future<UcidsTokens> getUcidsTokens() async {
    final jsonContent = await rootBundle.loadString(
      'packages/archethic_dapp_framework_flutter/lib/src/domain/repositories/tokens/ucids_tokens.json',
    );

    final Map<String, dynamic> jsonData = json.decode(jsonContent);

    return UcidsTokens.fromJson(jsonData);
  }

  @override
  Future<Map<String, int>> getUcidsTokensFromNetwork(
    final Environment environment,
  ) async {
    final ucidsTokens = await getUcidsTokens();

    return switch (environment) {
      Environment.testnet => ucidsTokens.testnet,
      Environment.mainnet => ucidsTokens.mainnet,
      Environment.devnet => ucidsTokens.devnet,
    };
  }
}
