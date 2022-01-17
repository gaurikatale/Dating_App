//import 'package:dating_app/helper/responsive.dart';
import 'package:dating_app/helper/responsive.dart';
import 'package:dating_app/helper/style.dart';
import 'package:dating_app/pages/home/widget/desktop.dart';
import 'package:dating_app/pages/home/widget/mobile.dart';
import 'package:dating_app/widgets/drawer.dart';
import 'package:dating_app/widgets/navbar_desktop.dart';
import 'package:dating_app/widgets/navbar_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldkey,
      extendBodyBehindAppBar: true,
      appBar: //ResponsiveWideget.isSmallScreen?mobileNavBar(scaffoldkey):
          PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: NavBar(),
      ),
      drawer: SideMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWideget(
        largeScreen: Desktop(),
        smallScreen: Mobile(),
      ),
    );
  }
}
