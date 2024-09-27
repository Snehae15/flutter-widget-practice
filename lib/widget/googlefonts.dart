import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoggleFonts extends StatefulWidget {
  const GoggleFonts({super.key});

  @override
  State<GoggleFonts> createState() => _GoggleFontsState();

  static getFont(String s) {}
}

class _GoggleFontsState extends State<GoggleFonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'HELLO WELCOME TO FLUTTER WORLD',
        style: GoogleFonts.getFont('Poppins'),
      ),
    );
  }
}
