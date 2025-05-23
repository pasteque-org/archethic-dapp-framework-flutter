import 'package:archethic_dapp_framework_flutter/src/l10n/localizations_ae_dapp_framework.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/components/buttons/app_button.dart';
import 'package:archethic_dapp_framework_flutter/src/ui/util/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonClose extends ConsumerWidget {
  const ButtonClose({
    required this.onPressed,
    this.fontSize = 16,
    super.key,
    this.backgroundGradient,
    this.dimens = Dimens.buttonDimens,
  });

  final VoidCallback onPressed;
  final Gradient? backgroundGradient;
  final double fontSize;
  final List<double> dimens;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    return AppButton(
      backgroundGradient: backgroundGradient,
      labelBtn: AppLocalizations.of(context)!.aedappfm_btn_close,
      onPressed: onPressed,
      fontSize: fontSize,
      dimens: dimens,
    );
  }
}
