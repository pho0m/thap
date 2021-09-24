import 'package:flutter/material.dart';

const dtFontFamily = "Prompt";
const dtPrimaryColor = Colors.grey;
const dtDefaultFColor = Colors.black;

const double dtDefaultWidth = 20.00;
const double dtDefaultHeight = 20.00;
const double dtDefaultPadding = 20.00;
const double dtDefaulticonsize = 15.00;
const double dtDefaulttext = 12.00;

const double fontSizeH1 = 36.00;
const double fontSizeH2 = 20.00;
const double fontSizeH3 = 18.00;
const double fontSizeH4 = 15.00;
const double fontSizeH5 = 12.00;
const double fontSizeH6 = 10.00;

const sizeBoxs20 = SizedBox(height: 20, width: 20);
const sizeBoxs10 = SizedBox(height: 10, width: 10);
const sizeBoxs5 = SizedBox(height: 5, width: 5);

const dtBlackColor = Color(0xFF212121);
const dtWhiteColor = Color(0xFFF5F5F5);

const TextTheme textTheme = TextTheme(
  headline1: head1,
  headline2: head2,
  headline3: head3,
  headline4: head4,
  headline5: head5,
  headline6: head6,
  subtitle1: sub1,
  subtitle2: sub2,
  bodyText1: body1,
  bodyText2: body2,
  caption: cap,
);

const head1 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.bold,
  fontSize: fontSizeH1,
  letterSpacing: 0.4,
  height: 0.9,
  color: dtDefaultFColor,
);

const head2 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w600,
  fontSize: fontSizeH2,
  letterSpacing: 0.4,
  height: 1.0,
  color: dtDefaultFColor,
);

const head3 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: fontSizeH3,
  letterSpacing: 0.2,
  color: dtDefaultFColor,
);

const head4 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: fontSizeH4,
  letterSpacing: 0.1,
  color: dtDefaultFColor,
);

const head5 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: dtDefaulttext,
  letterSpacing: 0.1,
  color: dtDefaultFColor,
);

const head6 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w100,
  fontSize: fontSizeH6,
  letterSpacing: 0.2,
  color: dtDefaultFColor,
);

const body1 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w400,
  fontSize: dtDefaulttext,
  letterSpacing: 0.2,
  color: dtDefaultFColor,
);

const body2 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: fontSizeH4,
  letterSpacing: 0.1,
);

const sub1 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w400,
  fontSize: dtDefaulttext,
  letterSpacing: -0.05,
  color: dtDefaultFColor,
);

const sub2 = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w500,
  fontSize: fontSizeH4,
  letterSpacing: 0.1,
  color: dtDefaultFColor,
);

const cap = TextStyle(
  fontFamily: dtFontFamily,
  fontWeight: FontWeight.w400,
  fontSize: dtDefaulttext,
  letterSpacing: 0.2,
  color: dtDefaultFColor,
);

// const kPrimaryColor = Color.fromRGBO(0, 133, 131, 1); /*#008583*/
// const kSubColor = Color.fromRGBO(131, 172, 170, 1); /*#83ACAA*/
// const kBackgroundColor = Color.fromRGBO(229, 238, 238, 1); /*#E5EEEE*/
// const kBorderColor = Color.fromRGBO(231, 236, 242, 1); /*#E7ECF2*/
// const kBorder100Color = Color.fromRGBO(173, 191, 212, 1); /*#ADBFD4*/
// const kTextColor = Color.fromRGBO(67, 67, 67, 1); /*#434343*/

// const kButtonGreen = Color.fromRGBO(52, 214, 108, 1); /*#34D66C*/
// const kButtonOrange = Color.fromRGBO(221, 107, 32, 1); /*#DD6B20*/
// const kButtonRed = Color.fromRGBO(229, 62, 62, 1); /*#E53E3E*/
// const kButtonIndigo = Color.fromRGBO(102, 126, 234, 1); /*#667eea*/
// const kButtonPink = Color.fromRGBO(234, 102, 223, 1); /*#ea66df*/