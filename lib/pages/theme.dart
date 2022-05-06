import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTheme{
  static ThemeData lightTheme(BuildContext Context){
    return ThemeData(
      primarySwatch: Colors.orange,
      //fontFamily: GoogleFonts.merriweather().fontFamily,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.merriweather().fontFamily,
          color: Colors.black,
          fontSize: 18.0,
        ),
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        textTheme: Theme.of(Context).textTheme,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext Context){
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}