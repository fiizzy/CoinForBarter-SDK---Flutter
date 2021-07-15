import 'package:flutter/material.dart';

class MyStyles {
  //Queries
  static double deviceHieight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double buttonWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;

  static double buttonHeight = 55;

  //All Application Colours
  static Color white = Color(0xffFFFFFF);
  static Color primaryPurple = Color(0xff3D0040);
  static Color gradientGreen = Color(0xff00E4AE);
  static Color primaryGreen = Color(0xff0CC393);
  static Color backgroundColour = Colors.black;
  static Color primaryGrey = Color(0xff282828);
  static Color darkGrey = Color(0xff0F0F0F);
  static Color active = Color(0xffBCFFC3);
  static Color gold = Color(0xffE9BE00);

  //Headers
  static TextStyle headerOne = TextStyle(
    fontSize: 20,
    color: darkGrey,
  );
  static TextStyle headerOneW = TextStyle(
    fontSize: 20,
    color: white,
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 16,
  );
  static TextStyle bodyText = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );
  static TextStyle bodyTextSmall = TextStyle(
    fontSize: 10,
    color: Colors.black,
  );
  static TextStyle bodyTextBold =
      TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);

  // Spacing
  static SizedBox verticalSpaceZero = SizedBox(
    height: 10,
  );
  static SizedBox horizontalSpaceZero = SizedBox(
    width: 10,
  );
  static SizedBox verticalSpaceOne = SizedBox(
    height: 20,
  );
  static SizedBox verticalSpaceTwo = SizedBox(
    height: 30,
  );
  static SizedBox horizontalSpaceOne = SizedBox(
    width: 20,
  );
  static SizedBox horizontalSpaceTwo = SizedBox(
    width: 30,
  );

  //Border Radius
  static BorderRadius myBorderRadius = BorderRadius.circular(500);
}
