import 'dart:ui';

import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/popup_close_button.dart';
import 'package:flutter/material.dart';

class PopupTemplate extends StatelessWidget {
  const PopupTemplate({
    required this.popupContent,
    required this.popupTitle,
    super.key,
    this.popupHeight,
    this.warningCloseLabel = '',
    this.warningCloseFunction,
    this.displayCloseButton = true,
  });

  final Widget popupContent;
  final String popupTitle;
  final double? popupHeight;
  final String warningCloseLabel;
  final Function? warningCloseFunction;
  final bool displayCloseButton;

  @override
  Widget build(final BuildContext context) {
    return ScaffoldMessenger(
      child: Builder(
        builder: (final context) {
          return Scaffold(
            backgroundColor: Colors.transparent.withAlpha(120),
            body: AlertDialog(
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                          right: 15,
                          left: 8,
                        ),
                        padding: const EdgeInsets.all(20),
                        height: popupHeight,
                        width: AppThemeBase.sizeBoxComponentWidth,
                        decoration: BoxDecoration(
                          color: AppThemeBase.sheetBackground,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppThemeBase.sheetBorder),
                        ),
                        child:
                            popupHeight == null
                                ? SingleChildScrollView(
                                  child: Wrap(children: [popupContent]),
                                )
                                : popupContent,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SelectionArea(
                              child: Text(
                                popupTitle,
                                style: Theme.of(context).textTheme.titleMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: BoxDecoration(
                                gradient: AppThemeBase.gradient,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (displayCloseButton)
                    Positioned(
                      right: 0,
                      child: PopupCloseButton(
                        warningCloseLabel: warningCloseLabel,
                        warningCloseFunction: warningCloseFunction,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
