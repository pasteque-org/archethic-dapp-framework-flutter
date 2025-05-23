import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class PopupWaves extends StatelessWidget {
  const PopupWaves({super.key});

  @override
  Widget build(final BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            ArchethicThemeBase.blue700.withValues(alpha: 0.1),
            ArchethicThemeBase.purple800.withValues(alpha: 0.1),
          ],
          [
            ArchethicThemeBase.blue600.withValues(alpha: 0.1),
            ArchethicThemeBase.purple500.withValues(alpha: 0.1),
          ],
          [
            ArchethicThemeBase.blue400.withValues(alpha: 0.1),
            ArchethicThemeBase.purple500.withValues(alpha: 0.1),
          ],
        ],
        durations: [35000, 19440, 10800],
        heightPercentages: [0.20, 0.23, 0.25],
        gradientBegin: Alignment.bottomLeft,
        gradientEnd: Alignment.topRight,
      ),
      size: Size.infinite,
      waveAmplitude: 0,
    );
  }
}
