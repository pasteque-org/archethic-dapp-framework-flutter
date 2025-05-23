import 'package:archethic_dapp_framework_flutter/src/ui/util/components/scale_size.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    super.key,
    this.style,
    this.selectable = true,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final bool selectable;

  @override
  Widget build(final BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback:
          (final bounds) => gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
      child:
          selectable
              ? SelectableText(
                text,
                style: style,
                textScaler: TextScaler.linear(
                  ScaleSize.textScaleFactor(context),
                ),
              )
              : Text(
                text,
                style: style,
                textScaler: TextScaler.linear(
                  ScaleSize.textScaleFactor(context),
                ),
              ),
    );
  }
}
