import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/app_button.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/welcome_connect_wallet_btn.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonValidate extends ConsumerWidget {
  const ButtonValidate({
    required this.controlOk,
    required this.labelBtn,
    required this.onPressed,
    required this.isConnected,
    required this.displayWalletConnectOnPressed,
    this.backgroundGradient,
    this.height = 40,
    this.fontSize = 16,
    this.displayWalletConnect = false,
    this.dimens = Dimens.buttonDimens,
    super.key,
  });

  final bool controlOk;
  final String labelBtn;
  final Function onPressed;
  final Gradient? backgroundGradient;
  final double height;
  final double fontSize;
  final bool displayWalletConnect;
  final bool isConnected;
  final VoidCallback displayWalletConnectOnPressed;
  final List<double> dimens;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    if (!isConnected) {
      if (displayWalletConnect) {
        return WelcomeConnectWalletBtn(
          onPressed: displayWalletConnectOnPressed,
        );
      }
      return SizedBox(width: 10, height: height);
    }

    if (!controlOk) {
      return AppButton(
        backgroundGradient: backgroundGradient,
        labelBtn: labelBtn,
        disabled: true,
        height: height,
        fontSize: fontSize,
        dimens: dimens,
      );
    }

    return AppButton(
      backgroundGradient: backgroundGradient,
      labelBtn: labelBtn,
      onPressed: onPressed,
      height: height,
      fontSize: fontSize,
      dimens: dimens,
    );
  }
}
