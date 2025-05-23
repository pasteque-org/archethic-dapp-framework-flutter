class AddressUtil {
  static String reduceAddress(final String input) {
    if (input.length <= 14) {
      return input;
    }

    final start = input.substring(0, 9);
    final end = input.substring(input.length - 5);

    return '$start...$end';
  }
}
