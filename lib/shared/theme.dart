import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultRadius = 12.0;
double defaultMargin = 16.0;

Color neutral50 = const Color(0xffFAFAFF);
Color neutral100 = const Color(0xffEEF0F2);
Color neutral300 = const Color(0xffECEBE4);
Color neutral500 = const Color(0xffDADDD8);
Color neutral600 = const Color(0xff6B6B6B);
Color neutral700 = const Color(0xff1C1C1C);

Color textDarkColor = const Color(0xff031B34);
Color textLightColor = const Color(0xffF8F8F8);
Color blueTernary = const Color(0xff41AEB0);

Color primaryPurple = const Color(0xff5A3D99);
Color secondaryPurple = const Color(0xff6F4BBD);
Color primaryBlue = const Color(0xff09AEEF);
Color primaryRed = const Color(0xffBD1B1B);
Color primaryGreen = const Color(0xff1D7331);

Color hoverYellow = const Color(0xffFFEA6A);
Color hoverBlue = const Color(0xff59C6F1);
Color hoverRed = const Color(0xffE64444);
Color hoverGreen = const Color(0xff34AA4F);

Color clickPurple = Color.fromARGB(255, 120, 86, 192);
Color clickYellow = const Color(0xffE5B91D);
Color clickBlue = const Color(0xff0B7AA6);
Color clickRed = const Color(0xffA40404);
Color clickGreen = const Color(0xff004F12);

TextStyle header1 = GoogleFonts.poppins(
  color: primaryPurple,
  fontSize: 28,
  fontWeight: bold,
);
TextStyle header2 = GoogleFonts.poppins(
  color: textDarkColor,
  fontSize: 20,
  fontWeight: bold,
);
TextStyle header3 = GoogleFonts.poppins(
  color: textDarkColor,
  fontSize: 16,
  fontWeight: semibold,
);
TextStyle body = GoogleFonts.poppins(
  color: textDarkColor,
  fontSize: 12,
  fontWeight: regular,
);
TextStyle buttonAndFieldText = GoogleFonts.poppins(
  color: textLightColor,
  fontSize: 12,
  fontWeight: medium,
);
TextStyle subHeader = GoogleFonts.poppins(
  color: textDarkColor,
  fontSize: 14,
  fontWeight: medium,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
