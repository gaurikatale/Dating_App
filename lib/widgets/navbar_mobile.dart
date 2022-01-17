import 'package:dating_app/helper/style.dart';
import 'package:flutter/material.dart';

Widget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
          onPressed: () {
            key.currentState?.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: active,
          )),
      backgroundColor: Colors.transparent,
      title: Image.asset('assets/images/logo.png'),
      centerTitle: true,
      elevation: 0,
    );
