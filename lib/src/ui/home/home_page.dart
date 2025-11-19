import 'package:clash_sing_app/src/ui/home/desktop/home_page_desktop.dart';
import 'package:clash_sing_app/src/ui/home/mobile/home_page_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileUI: HomePageMobile(),
      desktopUI: HomePageDesktop(),
    );
  }
}

