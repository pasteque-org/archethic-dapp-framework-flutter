import 'package:archethic_dapp_framework_flutter/src/l10n/localizations_ae_dapp_framework.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/themes/app_theme_base.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/app_button.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/icon_animated.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/popup_template.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/generic/responsive.dart';
import 'package:flutter/material.dart';

class PopupCloseButton extends StatelessWidget {
  const PopupCloseButton({
    super.key,
    this.warningCloseLabel = '',
    this.warningCloseFunction,
    this.warningCloseWarning = false,
    this.closeFunction,
  });

  final bool warningCloseWarning;
  final String warningCloseLabel;
  final Function? warningCloseFunction;
  final Function? closeFunction;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () async {
          if (!warningCloseWarning) {
            if (closeFunction != null) {
              await closeFunction!();
            } else {
              if (!context.mounted) {
                return;
              }
              Navigator.of(context).pop();
            }
            return;
          }

          return showDialog(
            context: context,
            builder: (final context) {
              return PopupTemplate(
                displayCloseButton: false,
                popupContent: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SelectableText(
                          warningCloseLabel,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontSize: Responsive.fontSizeFromTextStyle(
                              context,
                              Theme.of(context).textTheme.bodyMedium!,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppButton(
                              labelBtn:
                                  AppLocalizations.of(context)!.aedappfm_no,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            AppButton(
                              labelBtn:
                                  AppLocalizations.of(context)!.aedappfm_yes,
                              onPressed: () async {
                                if (warningCloseFunction != null) {
                                  await warningCloseFunction!();
                                }

                                if (!context.mounted) {
                                  return;
                                }
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                popupTitle:
                    AppLocalizations.of(
                      context,
                    )!.aedappfm_confirmationPopupTitle,
                popupHeight: 180,
              );
            },
          );
        },
        child: CircleAvatar(
          radius: 20,
          backgroundColor: AppThemeBase.backgroundPopupColor,
          child: const CircleAvatar(
            foregroundColor: Colors.white,
            radius: 12,
            child: IconAnimated(color: Colors.white, icon: Icons.close),
          ),
        ),
      ),
    );
  }
}
