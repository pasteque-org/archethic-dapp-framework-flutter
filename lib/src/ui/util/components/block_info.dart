import 'dart:ui';

import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

enum BlockInfoColor { blue, purple, green, neutral, grey }

class BlockInfo extends ConsumerWidget {
  const BlockInfo({
    required this.info,
    this.width = 300,
    this.blockInfoColor = BlockInfoColor.blue,
    this.backgroundWidget,
    this.bottomWidget,
    this.paddingEdgeInsetsClipRRect = const EdgeInsets.only(top: 15),
    this.paddingEdgeInsetsInfo = const EdgeInsets.only(
      left: 20,
      right: 20,
      top: 8,
      bottom: 8,
    ),
    this.borderWidth = 1.0,
    super.key,
  });

  final Widget info;
  final EdgeInsets paddingEdgeInsetsClipRRect;
  final EdgeInsets paddingEdgeInsetsInfo;
  final double width;
  final BlockInfoColor blockInfoColor;
  final Widget? backgroundWidget;
  final Widget? bottomWidget;
  final double borderWidth;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: paddingEdgeInsetsClipRRect,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Stack(
                children: [
                  if (backgroundWidget != null) backgroundWidget!,
                  Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color:
                          blockInfoColor == BlockInfoColor.grey
                              ? ArchethicThemeBase.neutral850
                              : null,
                      gradient:
                          blockInfoColor == BlockInfoColor.grey
                              ? null
                              : blockInfoColor == BlockInfoColor.blue
                              ? LinearGradient(
                                colors: [
                                  AppThemeBase.sheetBackgroundTertiary
                                      .withValues(alpha: 0.3),
                                  AppThemeBase.sheetBackgroundTertiary
                                      .withValues(alpha: 0.3),
                                ],
                                stops: const [0, 1],
                              )
                              : blockInfoColor == BlockInfoColor.purple
                              ? ArchethicThemeBase.linearPurple
                              : blockInfoColor == BlockInfoColor.green
                              ? LinearGradient(
                                colors: [
                                  ArchethicThemeBase.systemPositive300
                                      .withValues(alpha: 0.3),
                                  ArchethicThemeBase.systemPositive600
                                      .withValues(alpha: 0.3),
                                ],
                                stops: const [0, 1],
                              )
                              : LinearGradient(
                                colors: [
                                  ArchethicThemeBase.paleTransparentBackground
                                      .withValues(alpha: 0.3),
                                  ArchethicThemeBase.paleTransparentBackground
                                      .withValues(alpha: 0.3),
                                ],
                                stops: const [0, 1],
                              ),
                      border:
                          borderWidth == 0
                              ? null
                              : GradientBoxBorder(
                                gradient:
                                    blockInfoColor == BlockInfoColor.grey
                                        ? LinearGradient(
                                          colors: [
                                            ArchethicThemeBase.neutral800,
                                            ArchethicThemeBase.neutral800,
                                          ],
                                          stops: const [0, 1],
                                        )
                                        : blockInfoColor == BlockInfoColor.blue
                                        ? LinearGradient(
                                          colors: [
                                            AppThemeBase.sheetBorderTertiary
                                                .withValues(alpha: 0.4),
                                            AppThemeBase.sheetBackgroundTertiary
                                                .withValues(alpha: 0.4),
                                          ],
                                          stops: const [0, 1],
                                        )
                                        : blockInfoColor ==
                                            BlockInfoColor.purple
                                        ? LinearGradient(
                                          colors: [
                                            AppThemeBase.sheetBorderSecondary
                                                .withValues(alpha: 0.1),
                                            AppThemeBase.sheetBorderSecondary
                                                .withValues(alpha: 0.4),
                                          ],
                                          stops: const [0, 1],
                                        )
                                        : blockInfoColor == BlockInfoColor.green
                                        ? LinearGradient(
                                          colors: [
                                            ArchethicThemeBase.systemPositive100
                                                .withValues(alpha: 0.2),
                                            ArchethicThemeBase.systemPositive300
                                                .withValues(alpha: 0.2),
                                          ],
                                          stops: const [0, 1],
                                        )
                                        : LinearGradient(
                                          colors: [
                                            ArchethicThemeBase
                                                .paleTransparentBorder
                                                .withValues(alpha: 0.2),
                                            ArchethicThemeBase
                                                .paleTransparentBorder
                                                .withValues(alpha: 0.2),
                                          ],
                                          stops: const [0, 1],
                                        ),
                                width: borderWidth,
                              ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(padding: paddingEdgeInsetsInfo, child: info),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (bottomWidget != null) SizedBox(width: width, child: bottomWidget),
      ],
    );
  }
}
