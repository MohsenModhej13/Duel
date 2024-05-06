import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobile,
    super.key,
    this.tablet,
    this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  /// This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1100 &&
      MediaQuery.sizeOf(context).width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1100;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /// If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100 && desktop != null) {
      return desktop!;
    }

    /// If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 600 && tablet != null) {
      return tablet!;
    }

    /// Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
