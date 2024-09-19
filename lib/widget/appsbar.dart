// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Appbars extends StatefulWidget {
  const Appbars({super.key});

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //text
        title: Text("Appbars"),
        centerTitle: true,
        //bg color
        backgroundColor: Colors.purple,
        //leading icon
        leading: Icon(Icons.home),

        //Action
        //action icon not clickable
        actions: [
          Icon(Icons.search),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_outlined)),
        ],
        //shape
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        //Elevation
        elevation: 10,
      ),
    );
  }
}
