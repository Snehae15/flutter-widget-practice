import 'package:flutter/material.dart';

class NewClass extends StatefulWidget {
  const NewClass({super.key});

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Appbar"),
        ),
      ),
      backgroundColor: Colors.amber,
      body: const Center(
        child: Text(
          "NEW TEXT",
          style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontStyle: FontStyle.italic,
              letterSpacing: 12,
              wordSpacing: 10,
              backgroundColor: Colors.greenAccent,
              shadows: [Shadow(color: Colors.black, offset: Offset(7, 12))]),
        ),
      ),
    );
  }
}
