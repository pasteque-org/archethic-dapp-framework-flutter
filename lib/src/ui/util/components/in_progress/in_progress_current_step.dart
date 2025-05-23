import 'package:flutter/material.dart';

class InProgressCurrentStep extends StatelessWidget {
  const InProgressCurrentStep({required this.steplabel, super.key});

  final String steplabel;

  @override
  Widget build(final BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 10),
      child: SelectableText(steplabel, style: const TextStyle(fontSize: 11)),
    );
  }
}
