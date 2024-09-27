import 'package:flutter/material.dart';

class CenteredHintTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Centered Hint Text')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter text',
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            ),
            textAlign: TextAlign.center, // Centers the hint text
          ),
        ),
      ),
    );
  }
}
