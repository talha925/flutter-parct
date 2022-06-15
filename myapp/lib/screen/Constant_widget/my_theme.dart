import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color loginButtoonColor = Colors.purple;
  static Color singnupButtoonColor = Colors.grey.shade400;
  static Color LoginPageBoxColor = Color(0xffccccff);

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Color.fromARGB(221, 185, 21, 21),
          onSecondary: Color.fromARGB(255, 255, 200, 0),
          error: Colors.red,
          onError: Color.fromARGB(255, 180, 41, 41),
          background: Colors.black,
          onBackground: Color.fromARGB(255, 207, 13, 13),
          surface: Color.fromARGB(96, 204, 18, 18),
          onSurface: Color.fromARGB(255, 18, 80, 187)));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.black,
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.black,
          onBackground: Colors.black,
          surface: Colors.black38,
          onSurface: Colors.blueAccent));
}
