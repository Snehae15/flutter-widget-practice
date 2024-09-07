import 'package:flutter/material.dart';
import 'package:work/googlefonts.dart';

class DEmos extends StatefulWidget {
  const DEmos({super.key});

  @override
  State<DEmos> createState() => _DEmosState();
}

class _DEmosState extends State<DEmos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Demo",
        style: GoggleFonts.getFont('Poppins'),
      ),
    );
  }
}
