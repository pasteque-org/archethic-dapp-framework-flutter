import 'package:archethic_dapp_framework_flutter/src/application/api_service.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/repositories/tokens/verified_tokens.repository.dart';
import 'package:archethic_dapp_framework_flutter/src/infrastructure/verified_tokens.repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verified_tokens.g.dart';

@riverpod
VerifiedTokensRepositoryInterface _verifiedTokensRepository(
  final Ref ref,
  final Environment environment,
) {
  final apiService = ref.watch(apiServiceProvider(environment));
  return VerifiedTokensRepositoryImpl(
    apiService: apiService,
    environment: environment,
  );
}

@riverpod
Future<List<String>> _verifiedTokensByNetwork(
  final Ref ref,
  final Environment environment,
) {
  return ref
      .watch(_verifiedTokensRepositoryProvider(environment))
      .getVerifiedTokens();
}

@riverpod
Future<bool> _isVerifiedToken(
  final Ref ref,
  final Environment environment,
  final String address,
) async {
  final verifiedTokens = await ref.watch(
    _verifiedTokensByNetworkProvider(environment).future,
  );
  return ref
      .watch(_verifiedTokensRepositoryProvider(environment))
      .isVerifiedToken(address, verifiedTokens);
}

abstract class VerifiedTokensProviders {
  static const verifiedTokensRepository = _verifiedTokensRepositoryProvider;
  static const isVerifiedToken = _isVerifiedTokenProvider;
  static const verifiedTokensByNetwork = _verifiedTokensByNetworkProvider;
}
