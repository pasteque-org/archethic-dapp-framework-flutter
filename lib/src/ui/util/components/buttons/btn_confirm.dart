import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/app_button.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/dimens.dart';
import 'package:flutter/material.dart';

class ButtonConfirm extends StatelessWidget {
  const ButtonConfirm({
    required this.labelBtn,
    required this.onPressed,
    this.backgroundGradient,
    this.disabled = false,
    this.dimens = Dimens.buttonDimens,
    super.key,
  });

  final String labelBtn;
  final Function onPressed;
  final Gradient? backgroundGradient;
  final bool disabled;
  final List<double> dimens;

  @override
  Widget build(final BuildContext context) {
    return AppButton(
      backgroundGradient: backgroundGradient,
      labelBtn: labelBtn,
      onPressed: onPressed,
      disabled: disabled,
      dimens: dimens,
    );
  }
}
