import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/generic/responsive.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

enum InfoBannerType { error, success, request }

class InfoBanner extends StatelessWidget {
  const InfoBanner(
    this.message,
    this.infoBannerType, {
    this.width = AppThemeBase.sizeBoxComponentWidth,
    this.waitAnimation = false,
    super.key,
  });

  final String message;
  final InfoBannerType infoBannerType;
  final double width;
  final bool waitAnimation;

  @override
  Widget build(final BuildContext context) {
    if (message.isEmpty) {
      return const SizedBox.shrink(); //
    }

    return Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 5,
            bottom: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color:
                  infoBannerType == InfoBannerType.error
                      ? Theme.of(
                        context,
                      ).colorScheme.error.withValues(alpha: 0.6)
                      : infoBannerType == InfoBannerType.request
                      ? Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.6)
                      : AppThemeBase.statusOK.withValues(alpha: 0.6),
              width: 0.5,
            ),
            gradient: AppThemeBase.gradientInfoBannerBackground,
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              if (infoBannerType == InfoBannerType.error)
                Icon(
                  Iconsax.warning_2,
                  color: Theme.of(context).colorScheme.error,
                  size:
                      Responsive.fontSizeFromTextStyle(
                        context,
                        Theme.of(context).textTheme.bodyMedium!,
                      ) +
                      2,
                ),
              if (infoBannerType == InfoBannerType.error)
                const SizedBox(width: 5),
              Expanded(
                child: SelectableText(
                  message,
                  style: TextStyle(
                    color:
                        infoBannerType == InfoBannerType.error
                            ? Theme.of(context).colorScheme.error
                            : infoBannerType == InfoBannerType.request
                            ? Theme.of(context).colorScheme.primary
                            : AppThemeBase.statusOK,
                    fontSize:
                        Theme.of(context).textTheme.bodyMedium!
                            .copyWith(
                              fontSize: Responsive.fontSizeFromTextStyle(
                                context,
                                Theme.of(context).textTheme.bodyMedium!,
                              ),
                            )
                            .fontSize,
                  ),
                ),
              ),
              if (waitAnimation)
                SizedBox(
                  width: 10,
                  height: 10,
                  child: CircularProgressIndicator(
                    color: Colors.white.withValues(alpha: 0.6),
                    strokeWidth: 1,
                  ),
                ),
            ],
          ),
        )
        .animate()
        .fade(duration: const Duration(milliseconds: 200))
        .scale(duration: const Duration(milliseconds: 200));
  }
}
