import 'package:flutter/material.dart';

void main() => runApp(const Containers());

class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Containers with Image and Text"),
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 15,
            top: 15,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 155,
                width: 150,
                color: Colors.green,
                child: const Text(
                  "Hello! I am inside a container!",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(height: 20), // Add some spacing between containers
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Image.asset(
                  'assets/image-1.png', //  image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
