import 'package:flutter/material.dart';

class Baggu extends StatefulWidget {
  const Baggu({super.key});

  @override
  State<Baggu> createState() => _BagguState();
}

class _BagguState extends State<Baggu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'baggu',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amberAccent,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.black,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amberAccent,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.black,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amberAccent,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.black,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
