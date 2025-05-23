import 'package:archethic_dapp_framework_flutter/src/domain/repositories/consent.repository.dart';
import 'package:archethic_dapp_framework_flutter/src/infrastructure/hive/consent.hive.dart';

class ConsentRepositoryImpl implements ConsentRepository {
  @override
  Future<void> addAddress(final String v) async {
    final hiveConsentDatasource = await HiveConsentDatasource.getInstance();
    await hiveConsentDatasource.addAddress(v);
    return;
  }

  @override
  Future<DateTime?> getConsentTime(final String v) async {
    final hiveConsentDatasource = await HiveConsentDatasource.getInstance();
    return hiveConsentDatasource.getConsentTime(v);
  }
}
