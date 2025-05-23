import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class InProgressCircularStepProgressIndicator extends StatelessWidget {
  const InProgressCircularStepProgressIndicator({
    required this.currentStep,
    required this.totalSteps,
    required this.isProcessInProgress,
    this.icon = Iconsax.timer,
    this.failure,
    super.key,
  });

  final int currentStep;
  final int totalSteps;
  final bool isProcessInProgress;
  final Failure? failure;
  final IconData icon;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Align(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircularStepProgressIndicator(
              totalSteps: totalSteps,
              currentStep: currentStep,
              width: 35,
              height: 35,
              stepSize: 2,
              roundedCap: (_, final isSelected) => isSelected,
              gradientColor:
                  !isProcessInProgress
                      ? failure == null
                          ? AppThemeBase
                              .gradientCircularStepProgressIndicatorFinished
                          : AppThemeBase
                              .gradientCircularStepProgressIndicatorError
                      : failure == null
                      ? AppThemeBase.gradientCircularStepProgressIndicator
                      : AppThemeBase.gradientCircularStepProgressIndicatorError,
              selectedColor: Colors.white,
              unselectedColor: Colors.white.withValues(alpha: 0.2),
              removeRoundedCapExtraAngle: true,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                if (isProcessInProgress && failure == null)
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      color: Colors.white.withValues(alpha: 0.2),
                      strokeWidth: 1,
                    ),
                  ),
                Icon(icon, size: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
