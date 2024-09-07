import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating Button Example'),
        ),
        body: Center(
          child: Text(
            'Press the floating button!',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add the action you want the button to perform here
            print('Floating button pressed!');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
