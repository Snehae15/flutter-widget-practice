import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  String inputText = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
            onChanged: (text) {
              setState(() {
                inputText = text;
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            "You entered: $inputText",
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
