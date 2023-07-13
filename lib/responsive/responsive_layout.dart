import 'package:flutter/material.dart';

class ResposniveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  // ignore: use_key_in_widget_constructors
  const ResposniveLayout({
    required this.desktopScaffold,
    required this.tabletScaffold,
    required this.mobileScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1200) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
