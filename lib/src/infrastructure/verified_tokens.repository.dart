import 'dart:convert';

import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/verified_tokens.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/repositories/tokens/verified_tokens.repository.dart';
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:flutter/services.dart';

class VerifiedTokensRepositoryImpl
    implements VerifiedTokensRepositoryInterface {
  VerifiedTokensRepositoryImpl({
    required this.apiService,
    required this.environment,
  }) : assert(
         apiService.endpoint == environment.endpoint,
         'ApiService should use `${environment.endpoint}` endpoint',
       );

  final ApiService apiService;
  final Environment environment;

  Future<VerifiedTokens> _getLocalVerifiedTokens() async {
    final jsonContent = await rootBundle.loadString(
      'packages/archethic_dapp_framework_flutter/lib/src/domain/repositories/tokens/verified_tokens.json',
    );

    final Map<String, dynamic> jsonData = json.decode(jsonContent);

    return VerifiedTokens.fromJson(jsonData);
  }

  @override
  Future<List<String>> getVerifiedTokens() {
    return switch (environment) {
      Environment.testnet => _getVerifiedTokensFromBlockchain(
        '0000b01e7a497f0576a004c5957d14956e165a6f301d76cda35ba49be4444dac00eb',
      ),
      Environment.mainnet => _getVerifiedTokensFromBlockchain(
        '000030ed4ed79a05cfaa90b803c0ba933307de9923064651975b59047df3aaf223bb',
      ),
      Environment.devnet => _getLocalVerifiedTokens().then(
        (final local) => local.devnet,
      ),
    };
  }

  @override
  bool isVerifiedToken(
    final String address,
    final List<String> verifiedTokensList,
  ) {
    if (verifiedTokensList.contains(address.toUpperCase())) {
      return true;
    }
    return false;
  }

  Future<List<String>> _getVerifiedTokensFromBlockchain(
    final String txAddress,
  ) async {
    final lastAddressMap = await apiService.getLastTransaction([
      txAddress,
      // ignore: require_trailing_commas
    ], request: 'data { content }');
    if (lastAddressMap[txAddress] != null &&
        lastAddressMap[txAddress]!.data != null &&
        lastAddressMap[txAddress]!.data!.content != null) {
      final Map<String, dynamic> jsonMap = jsonDecode(
        lastAddressMap[txAddress]!.data!.content!,
      );
      if (jsonMap['verifiedTokens'] != null &&
          jsonMap['verifiedTokens']['tokens'] != null) {
        return List.from(jsonMap['verifiedTokens']['tokens']);
      }
    }
    return <String>[];
  }
}
