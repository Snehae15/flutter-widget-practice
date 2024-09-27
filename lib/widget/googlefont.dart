import 'package:flutter/material.dart';
import 'package:work/widget/googlefonts.dart';

class Googlefontsdemo extends StatefulWidget {
  const Googlefontsdemo({super.key});

  @override
  State<Googlefontsdemo> createState() => _GooglefontsdemoState();
}

class _GooglefontsdemoState extends State<Googlefontsdemo> {
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
