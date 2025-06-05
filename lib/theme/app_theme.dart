import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.bebasNeue(fontSize: 22),
        titleMedium: GoogleFonts.lato(fontSize: 16),
        bodyMedium: GoogleFonts.roboto(fontSize: 14),
      ),
    );
  }
}
