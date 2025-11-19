import 'package:flutter/material.dart';
import 'package:clash_sing_app/src/common/app_constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileUI;
  final Widget? desktopUI;

  const ResponsiveLayout({
    super.key,
    required this.mobileUI,
    this.desktopUI,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopBreakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < desktopBreakpoint) {
          return mobileUI;
        } else {
          return desktopUI ?? mobileUI;
        }
      },
    );
  }
}