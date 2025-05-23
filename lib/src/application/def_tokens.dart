import 'package:archethic_dapp_framework_flutter/src/domain/models/ae_token.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_dapp_framework_flutter/src/infrastructure/def_tokens.repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'def_tokens.g.dart';

@riverpod
DefTokensRepositoryImpl defTokensRepositoryImpl(final Ref ref) =>
    DefTokensRepositoryImpl();

@riverpod
Future<AEToken?> getDefToken(
  final Ref ref,
  final Environment environment,
  final String address,
) {
  return ref
      .watch(defTokensRepositoryImplProvider)
      .getDefToken(environment, address);
}
