// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      // ignore: deprecated_member_us, deprecated_member_use
      buttonColor: darkBlueColor,
      // ignore: deprecated_member_use
      accentColor: darkBlueColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      // ignore: deprecated_member_use
      buttonColor: lightBlueColor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      // ignore: duplicate_ignore
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context)
              .textTheme
              .copyWith(
                  headline6: context.textTheme.headline6!
                      .copyWith(color: Colors.white))
              .bodyText2,
          titleTextStyle: Theme.of(context)
              .textTheme
              .copyWith(
                  headline6: context.textTheme.headline6!
                      .copyWith(color: Colors.white))
              .headline6));

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  // static Color darkCreamColor = Color(0xff0b0b0b);
  static Color darkCreamColor = Vx.gray800;
  static Color darkBlueColor = Color(0xff403b58);
  static Color lightBlueColor = Vx.indigo500;
  // static Color lightBlueColor = Vx.purple400;
}
