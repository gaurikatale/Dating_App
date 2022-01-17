import 'package:dating_app/constants/constants.dart';
import 'package:dating_app/helper/responsive.dart';
import 'package:dating_app/helper/style.dart';
import 'package:dating_app/widgets/bottom_text_widget.dart';
import 'package:dating_app/widgets/cutom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: 1440),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Because You DEserve Better',
                    style: GoogleFonts.roboto(
                        color: active,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: 'Get noticed for'),
                        TextSpan(
                          text: ' who',
                          style: GoogleFonts.roboto(
                            color: active,
                          ),
                        ),
                        TextSpan(text: ' you are'),
                        TextSpan(
                            text: ' not what', style: GoogleFonts.roboto()),
                        TextSpan(text: ' you look like'),
                      ],
                      style: GoogleFonts.roboto(
                          fontSize: ResponsiveWideget.isMediumScreen(context)
                              ? 30
                              : 50,
                          fontWeight: FontWeight.bold)),
                ),
                Visibility(
                    child: Text(
                  mainParagraph,
                  style: GoogleFonts.roboto(
                      fontSize: 20, letterSpacing: 1.5, height: 1.5),
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 40),
                          blurRadius: 80,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenSize.width / 4,
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined),
                            hintText: 'Enter your Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      CustomButton(text: 'Get Started'),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 14,
                ),
                Visibility(
                    visible: screenSize.width > 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomText(
                          mainText: '15k+',
                          secondaryText: 'Dates and matches\nmade everyday',
                        ),
                        BottomText(
                          mainText: '1,456',
                          secondaryText: 'New members\nsignup every day',
                        ),
                        BottomText(
                          mainText: '1M+',
                          secondaryText: 'Members from\naround the world',
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/couple.png',
                  width: screenSize.width / 1.9,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
