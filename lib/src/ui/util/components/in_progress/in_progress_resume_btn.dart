import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/l10n/localizations_ae_dapp_framework.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/app_button.dart';
import 'package:flutter/material.dart';

class InProgressResumeBtn extends StatelessWidget {
  const InProgressResumeBtn({
    required this.isProcessInProgress,
    required this.currentStep,
    required this.onPressed,
    this.failure,
    super.key,
  });

  final bool isProcessInProgress;
  final int currentStep;
  final VoidCallback onPressed;
  final Failure? failure;

  @override
  Widget build(final BuildContext context) {
    if (!isProcessInProgress && failure != null && currentStep > 0) {
      return AppButton(
        labelBtn: AppLocalizations.of(context)!.aedappfm_btn_resume,
        onPressed: onPressed,
      );
    }
    return const SizedBox.shrink();
  }
}
