import 'package:figma_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 12.0,
            ),
          ),
          bodyLarge: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          bodySmall: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      home: BottomNavBar(),
    );
  }
}
