import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:flutter/material.dart';
import 'package:lit_starfield/view.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    required this.backgroundImage,
    this.withAnimation = false,
    this.boxFit = BoxFit.cover,
    super.key,
  });

  final bool withAnimation;
  final String backgroundImage;
  final BoxFit boxFit;

  @override
  Widget build(final BuildContext context) {
    return Stack(
      children: [
        Container(color: AppThemeBase.backgroundColor),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                ArchethicThemeBase.purple500.withValues(alpha: 1),
                BlendMode.modulate,
              ),
              image: AssetImage(backgroundImage),
              fit: boxFit,
            ),
          ),
        ),
        if (withAnimation)
          Opacity(
            opacity: 0.8,
            child: LitStarfieldContainer(
              velocity: 0.2,
              number: 200,
              starColor: ArchethicThemeBase.neutral0,
              scale: 3,
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
        if (withAnimation)
          Opacity(
            opacity: 0.3,
            child: LitStarfieldContainer(
              velocity: 0.5,
              number: 100,
              scale: 10,
              starColor: ArchethicThemeBase.blue600,
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
      ],
    );
  }
}
