import 'package:archethic_dapp_framework_flutter/src/l10n/localizations_ae_dapp_framework.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/generic/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ButtonMax extends StatelessWidget {
  const ButtonMax({
    required this.balanceAmount,
    required this.onTap,
    super.key,
    this.height,
    this.style,
  });

  final double balanceAmount;
  final VoidCallback onTap;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(final BuildContext context) {
    if (balanceAmount <= 0) {
      return const SizedBox.shrink();
    }

    return InkWell(
      onTap: onTap,
      child: Container(
            alignment: Alignment.center,
            height: height,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppThemeBase.maxButtonColor),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                AppLocalizations.of(context)!.aedappfm_btn_max,
                style:
                    style ??
                    DefaultTextStyle.of(context).style.copyWith(
                      color: AppThemeBase.maxButtonColor,
                      fontSize: Responsive.fontSizeFromTextStyle(
                        context,
                        DefaultTextStyle.of(context).style,
                      ),
                    ),
              ),
            ),
          )
          .animate()
          .fade(duration: const Duration(milliseconds: 300))
          .scale(duration: const Duration(milliseconds: 300)),
    );
  }
}
