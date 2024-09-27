import 'package:flutter/material.dart';

class HomeMedia extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        height: height / 4, //half of the height size
        width: width / 2, //half of the width size
      ),
    );
  }
}
