import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
import 'screens/movie_detail_screen.dart';

void main() {
  runApp(const NetflixClone());
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Global theme configuration
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        textTheme: TextTheme(
          // First font type - for titles
          headlineLarge: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          // Second font type - for subtitles
          titleMedium: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          // Third font type - for body text
          bodyMedium: GoogleFonts.openSans(fontSize: 14, color: Colors.white70),
        ),
      ),
      // Route configuration
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/movie-detail': (context) => const MovieDetailScreen(),
      },
    );
  }
}
