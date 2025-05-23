import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    super.key,
  });
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(final BuildContext context) =>
      MediaQuery.sizeOf(context).width < 650;

  static bool isTablet(final BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1100 &&
      MediaQuery.sizeOf(context).width >= 650;

  static bool isDesktop(final BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1100;

  static double fontSizeFromTextStyle(
    final BuildContext context,
    final TextStyle textStyle,
  ) {
    if (Responsive.isDesktop(context)) {
      return textStyle.fontSize!;
    } else {
      if (Responsive.isTablet(context)) {
        return textStyle.fontSize! - 2;
      }
    }
    return textStyle.fontSize! - 4;
  }

  static double fontSizeFromValue(
    final BuildContext context, {
    required final double desktopValue,
    final double ratioTablet = 2,
    final double ratioMobile = 4,
  }) {
    if (Responsive.isDesktop(context)) {
      return desktopValue;
    } else {
      if (Responsive.isTablet(context)) {
        return desktopValue - ratioTablet;
      }
    }
    return desktopValue - ratioMobile;
  }

  @override
  Widget build(final BuildContext context) {
    return LayoutBuilder(
      builder: (final context, final constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
