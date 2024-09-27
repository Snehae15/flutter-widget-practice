// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          const Icon(Icons.search),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        elevation: 50,
      ),
      body: Center(
        child: Text(
          "About page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
