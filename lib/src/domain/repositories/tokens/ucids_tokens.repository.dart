import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_dapp_framework_flutter/src/domain/models/ucids_tokens.dart';

abstract class UcidsTokensRepositoryInterface {
  Future<UcidsTokens> getUcidsTokens();

  Future<Map<String, int>> getUcidsTokensFromNetwork(
    final Environment environment,
  );
}
