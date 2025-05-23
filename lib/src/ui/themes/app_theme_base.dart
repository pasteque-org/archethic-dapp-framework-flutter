import 'package:flutter/material.dart';

part 'archethic_theme_base.dart';

class AppThemeBase {
  static var mainFont = 'Telegraf';
  static var addressFont = 'Roboto';

  static Color primaryColor = ArchethicThemeBase.purple500;
  static Color secondaryColor = ArchethicThemeBase.raspberry300;
  static Color backgroundColor = ArchethicThemeBase.darkenedBackground;
  static Color maxButtonColor = ArchethicThemeBase.raspberry300;
  static Color halfButtonColor = ArchethicThemeBase.raspberry300;
  static Color backgroundPopupColor = ArchethicThemeBase.purple500;

  static Color statusOK = ArchethicThemeBase.systemPositive600;
  static Color statusKO = ArchethicThemeBase.systemDanger600;
  static Color statusInProgress = ArchethicThemeBase.raspberry300;

  static Gradient gradient = LinearGradient(
    colors: [
      ArchethicThemeBase.neutral0.withValues(alpha: 0.2),
      ArchethicThemeBase.neutral0.withValues(alpha: 0),
    ],
    stops: const [0, 1],
  );

  static Gradient gradientWelcomeTxt = LinearGradient(
    colors: [ArchethicThemeBase.raspberry300, ArchethicThemeBase.raspberry500],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static Gradient gradientBtn = LinearGradient(
    colors: <Color>[ArchethicThemeBase.blue400, ArchethicThemeBase.blue600],
  );

  static Color sheetBackground = ArchethicThemeBase.brightPurpleBackground;
  static Color sheetBorder = ArchethicThemeBase.brightPurpleBorder;

  static Color sheetBackgroundSecondary =
      ArchethicThemeBase.paleTransparentBackground;
  static Color sheetBorderSecondary = ArchethicThemeBase.paleTransparentBorder;

  static Color sheetBackgroundTertiary =
      ArchethicThemeBase.palePurpleBackground;
  static Color sheetBorderTertiary = ArchethicThemeBase.palePurpleBorder;

  static Gradient gradientLine = LinearGradient(
    colors: [
      ArchethicThemeBase.purple500.withValues(alpha: 1),
      ArchethicThemeBase.purple500.withValues(alpha: 0.3),
    ],
    stops: const [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.center,
  );

  static Gradient gradientInputFormBackground = LinearGradient(
    colors: [
      ArchethicThemeBase.neutral900.withValues(alpha: 1),
      ArchethicThemeBase.neutral900.withValues(alpha: 0.3),
    ],
    stops: const [0, 1],
  );

  static Gradient gradientInfoBannerBackground = LinearGradient(
    colors: [
      ArchethicThemeBase.neutral900.withValues(alpha: 1),
      ArchethicThemeBase.neutral900.withValues(alpha: 0.3),
    ],
    stops: const [0, 1],
  );

  static Gradient gradientCircularStepProgressIndicator = LinearGradient(
    colors: [statusInProgress, ArchethicThemeBase.systemInfo500],
    stops: const [0, 1],
  );

  static Gradient gradientCircularStepProgressIndicatorFinished =
      LinearGradient(
        colors: [statusOK, ArchethicThemeBase.systemPositive600],
        stops: const [0, 1],
      );

  static Gradient gradientCircularStepProgressIndicatorError = LinearGradient(
    colors: [ArchethicThemeBase.systemDanger600, statusKO],
    stops: const [0, 1],
  );

  static const sizeBoxComponentWidth = 600.0;
}
