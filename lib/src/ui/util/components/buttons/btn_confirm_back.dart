import 'package:flutter/material.dart';

class ButtonConfirmBack extends StatelessWidget {
  const ButtonConfirmBack({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(final BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SelectableText(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        BackButton(onPressed: onPressed),
      ],
    );
  }
}
