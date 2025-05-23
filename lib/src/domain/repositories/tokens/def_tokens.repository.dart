import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart';

abstract class DefTokensRepositoryInterface {
  Future<AEToken?> getDefToken(
    final Environment enviroment,
    final String address,
  );
}
