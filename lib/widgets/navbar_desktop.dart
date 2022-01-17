import 'package:dating_app/helper/style.dart';
import 'package:dating_app/widgets/cutom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 100),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/logo.png'),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: screenSize.width / 8,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text("Princing",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[0] ? active : disable)),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _isHovering[0],
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(20)),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text("Log In",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[1] ? active : disable)),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _isHovering[1],
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(20)),
                          ))
                    ],
                  ),
                )
              ],
            )),
            SizedBox(
              width: screenSize.width / 20,
            ),
            CustomButton(text: 'Register'),
            SizedBox(
              width: screenSize.width / 40,
            ),
          ],
        ),
      ),
    );
  }
}
