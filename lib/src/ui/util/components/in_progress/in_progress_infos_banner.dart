import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/info_banner.dart';
import 'package:flutter/material.dart';

class InProgressInfosBanner extends StatelessWidget {
  const InProgressInfosBanner({
    required this.isProcessInProgress,
    required this.walletConfirmation,
    required this.walletConfirmationTxt,
    required this.successTxt,
    required this.inProgressTxt,
    this.failure,
    this.failureMessage,
    super.key,
  });

  final bool isProcessInProgress;
  final bool walletConfirmation;
  final Failure? failure;
  final String walletConfirmationTxt;
  final String successTxt;
  final String inProgressTxt;
  final String? failureMessage;

  @override
  Widget build(final BuildContext context) {
    if (failure != null && failureMessage != null) {
      return InfoBanner(
        failureMessage!,
        InfoBannerType.error,
        width: MediaQuery.sizeOf(context).width * 0.9,
      );
    }

    if (walletConfirmation) {
      return InfoBanner(
        walletConfirmationTxt,
        InfoBannerType.request,
        width: MediaQuery.sizeOf(context).width * 0.9,
      );
    }

    if (failure == null && !isProcessInProgress) {
      return InfoBanner(
        successTxt,
        InfoBannerType.success,
        width: MediaQuery.sizeOf(context).width * 0.9,
      );
    }

    return InfoBanner(
      inProgressTxt,
      InfoBannerType.request,
      width: MediaQuery.sizeOf(context).width * 0.9,
      waitAnimation: true,
    );
  }
}
