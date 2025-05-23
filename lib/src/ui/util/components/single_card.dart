import 'dart:ui';

import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({
    required this.cardContent,
    this.globalPadding = 20,
    this.decorationColor,
    this.decorationBorderColor,
    super.key,
  });

  final Widget cardContent;
  final double globalPadding;
  final Color? decorationColor;
  final Color? decorationBorderColor;

  @override
  Widget build(final BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: decorationColor ?? AppThemeBase.sheetBackground,
            border: Border.all(
              color: decorationBorderColor ?? AppThemeBase.sheetBorder,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(globalPadding),
            child: cardContent,
          ),
        ),
      ),
    );
  }
}
