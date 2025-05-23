import 'dart:math';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

/// Input formatter that ensures text starts with @
class ContactInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var workingText = newValue.text;
    if (!workingText.startsWith('@')) {
      workingText = '@$workingText';
    }

    final splitStr = workingText.split('@');
    // If this string contains more than 1 @, remove all but the first one
    if (splitStr.length > 2) {
      workingText = '@${workingText.replaceAll('@', '')}';
    }

    // If nothing changed, return original
    if (workingText == newValue.text) {
      return newValue;
    }

    return newValue.copyWith(
      text: workingText,
      selection: TextSelection.collapsed(offset: workingText.length),
    );
  }
}

/// Input formatter that ensures only one space between words
class SingleSpaceInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    // Don't allow first character to be a space
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    } else if (oldValue.text.isEmpty && newValue.text == ' ') {
      return oldValue;
    } else if (oldValue.text.endsWith(' ') && newValue.text.endsWith('  ')) {
      return oldValue;
    }

    return newValue;
  }
}

/// Ensures input is always uppercase
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

/// Ensures input is always lowercase
class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}

class AmountTextInputFormatter extends TextInputFormatter {
  AmountTextInputFormatter({
    this.decimalSeparator = '.',
    this.thousandsSeparator = ' ',
    this.precision = 2,
    this.useUnifyDecimalSeparator = true,
  });

  final String thousandsSeparator;
  final String decimalSeparator;
  final int precision;
  final bool useUnifyDecimalSeparator;

  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    final valueFiltered = TextEditingValue(
      text:
          useUnifyDecimalSeparator
              ? newValue.text
                  .unifyDecimalSeparator()
                  .removeIllegalNumberCharacters()
              : newValue.text.removeIllegalNumberCharacters(),
    );

    if (!valueFiltered.text.isValidNumber()) {
      return oldValue;
    }

    final parts = valueFiltered.text.split(decimalSeparator);
    final integerPart = parts[0].replaceAll(thousandsSeparator, '');
    final decimalPart =
        parts.length > 1
            ? decimalSeparator + parts[1].limitLength(precision)
            : '';

    final formattedIntegerPart = _formatIntegerPart(integerPart);

    final newText = formattedIntegerPart + decimalPart;

    final int cursorPosition = min(
      newText.length,
      newValue.selection.end + (newText.length - newValue.text.length),
    );

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: max(0, cursorPosition)),
    );
  }

  String _formatIntegerPart(final String integerPart) {
    final reversedString = integerPart.split('').reversed.join();
    final formattedReversedString = reversedString.replaceAllMapped(
      RegExp(r'(\d{3})(?=\d)'),
      (final match) => '${match.group(0)}$thousandsSeparator',
    );
    return formattedReversedString.split('').reversed.join();
  }
}

extension DoubleNumberExt on double {
  String formatNumber({final int? precision}) {
    if (precision != null) {
      if (precision <= 2) {
        final f = NumberFormat('#,##0.${''.padRight(precision, '0')}', 'en_US');
        return f.format(this);
      } else {
        final f = NumberFormat(
          '#,##0.00${''.padRight(precision - 2, '#')}',
          'en_US',
        );
        return f.format(this);
      }
    }
    if (this > 1) {
      final f = NumberFormat('#,##0.00', 'en_US');
      return f.format(this);
    }
    final f = NumberFormat('#,##0.00######', 'en_US');
    return f.format(this);
  }
}

extension StringNumberExt on String {
  static final illegalCharacters = RegExp('[^0-9.]');
  String removeIllegalNumberCharacters() => replaceAll(illegalCharacters, '');

  String unifyDecimalSeparator() => replaceAll(',', '.');

  bool isValidNumber() => double.tryParse(this) != null;

  String integerPart(final String separator) {
    final parts = split(separator);
    if (parts.isEmpty) {
      return '';
    }

    return parts.first;
  }

  bool hasDecimalPart(final String separator) => contains(separator);

  String decimalPart(final String separator) {
    final parts = split(separator);
    if (parts.length < 2) {
      return '';
    }

    return parts[1];
  }

  String limitLength(final int maxLength) {
    return substring(0, min(length, maxLength));
  }

  String splitFromRight(final int interval, final String separator) {
    final leftPartLength = length % interval;
    final parts = length ~/ interval;

    final resultBuilder = StringBuffer();

    if (leftPartLength > 0) {
      resultBuilder.write(substring(0, leftPartLength));

      if (parts > 0) {
        resultBuilder.write(separator);
      }
    }

    for (var i = 0; i < parts; i++) {
      final offset = leftPartLength + i * interval;
      resultBuilder.write(substring(offset, offset + interval));
      if (i < parts - 1) {
        resultBuilder.write(separator);
      }
    }
    return resultBuilder.toString();
  }

  String reduceSymbol({final int lengthMax = 5}) {
    String subOnCharacter({
      required final String str,
      required final int from,
      required final int to,
    }) {
      final runes = str.runes.toList();
      var result = '';
      for (var i = from; i < to; i++) {
        // ignore: use_string_buffers
        result = result + String.fromCharCode(runes[i]);
      }
      return result;
    }

    if (runes.length > lengthMax) {
      return '${subOnCharacter(str: this, from: 0, to: lengthMax)}...';
    }
    return this;
  }

  String compactNumber() {
    final f = NumberFormat.compact();
    final doubleNumber = double.tryParse(this) ?? 0;
    return f.format(doubleNumber);
  }
}
