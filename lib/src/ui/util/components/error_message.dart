import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/info_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorMessage extends ConsumerWidget {
  const ErrorMessage({this.failure, this.failureMessage, super.key});

  final Failure? failure;
  final String? failureMessage;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    if (failure == null) {
      return const SizedBox(height: 10);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 40,
        child: InfoBanner(failureMessage ?? '', InfoBannerType.error),
      ),
    );
  }
}
