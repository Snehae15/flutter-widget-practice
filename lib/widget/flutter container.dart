import 'package:flutter/material.dart';

class FlutterContainers extends StatefulWidget {
  const FlutterContainers({super.key});

  @override
  State<FlutterContainers> createState() => _FlutterContainersState();
}

class _FlutterContainersState extends State<FlutterContainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          child: const Text(
            'Hello, Flutter!',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
