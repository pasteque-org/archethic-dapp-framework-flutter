import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ucids_tokens.g.dart';

@riverpod
Future<Map<String, int>> _ucidsTokens(
  final Ref ref, {
  final Environment? environment,
}) async {
  if (environment != null) {
    return ref
        .watch(_ucidsTokensRepositoryProvider)
        .getUcidsTokensFromNetwork(environment);
  }

  final allUcids =
      await ref.watch(_ucidsTokensRepositoryProvider).getUcidsTokens();
  return {...allUcids.devnet, ...allUcids.testnet, ...allUcids.mainnet};
}

@riverpod
Future<int?> _ucid(
  final Ref ref, {
  required final String address,
  final Environment? environment,
}) async {
  final ucidsTokens = await ref.watch(
    _ucidsTokensProvider(environment: environment).future,
  );

  return ucidsTokens[address];
}

@riverpod
UcidsTokensRepositoryImpl _ucidsTokensRepository(final Ref ref) =>
    UcidsTokensRepositoryImpl();

abstract class UcidsTokensProviders {
  static const ucidsTokens = _ucidsTokensProvider;
  static const ucid = _ucidProvider;
}
