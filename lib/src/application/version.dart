import 'package:archethic_dapp_framework_flutter/src/l10n/localizations_ae_dapp_framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'version.g.dart';

@riverpod
Future<String> versionString(
  final Ref ref,
  final AppLocalizations localizations,
) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return '${localizations.aedappfm_version} ${packageInfo.version} - ${localizations.aedappfm_build} ${packageInfo.buildNumber}';
}
