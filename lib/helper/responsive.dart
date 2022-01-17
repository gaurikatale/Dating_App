import 'package:flutter/material.dart';

int smallScreenWidth = 852;
int largeScreenWidth = 1200;

class ResponsiveWideget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediunScreen;
  final Widget? smallScreen;

  const ResponsiveWideget(
      {required this.largeScreen, this.mediunScreen, this.smallScreen});
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenWidth;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > largeScreenWidth;
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= smallScreenWidth &&
      MediaQuery.of(context).size.width <= largeScreenWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = constraints.maxWidth;
        if (maxWidth > largeScreenWidth) {
          return largeScreen;
        } else if (maxWidth >= smallScreenWidth &&
            maxWidth <= largeScreenWidth) {
          return mediunScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
