import 'package:flutter/material.dart';

class Container_practice extends StatefulWidget {
  const Container_practice({super.key});

  @override
  State<Container_practice> createState() => _Container_practiceState();
}

class _Container_practiceState extends State<Container_practice> {
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
