import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as google_fonts;

double defaultVerticalMargin = 14.0;
double defaultHorizontalMargin = 24.0;
double defaultRadius = 5.0;

const Color kPrimaryColor = Color(0xFF38A1FF);
const Color kBlackColor = Color(0xFF000000);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kGreyColor = Color(0xFF9698A9);
const Color kGreenColor = Color(0xFF0EC3AE);
const Color kRedColor = Color(0xfFFEB70A5);
const Color kBackgroundColor = Color(0xFFFAFAFA);
const Color kInactiveColor = Color(0xFFDBD7EC);
const Color kTransparentColor = Colors.transparent;

TextStyle blackTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kBlackColor,
);

TextStyle whiteTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kWhiteColor,
);

TextStyle greyTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kGreyColor,
);

TextStyle greenTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kGreenColor,
);

TextStyle redTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kRedColor,
);

TextStyle primaryTextStyle = google_fonts.GoogleFonts.montserrat(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
