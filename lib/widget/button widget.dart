// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEXT"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.home),
        actions: [
          const Icon(Icons.search),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        elevation: 50,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              style: ButtonStyle(
                textStyle: WidgetStateProperty.all(
                  const TextStyle(fontSize: 30),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.red),
              ),
              onPressed: () {
                print("Clicked");
              },
              child: const Text("Text Button"),
            ),
            TextButton.icon(
              style: ButtonStyle(
                textStyle: WidgetStateProperty.all(
                  const TextStyle(fontSize: 30),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                print("Clicked");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              icon: const Icon(Icons.home),
              label: const Text("Text icon Button"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.only(
                      left: 150, right: 150, top: 10, bottom: 10),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.amber),
                backgroundColor: WidgetStateProperty.all(Colors.purple),
                minimumSize: WidgetStateProperty.all(const Size(5, 20)),
                textStyle:
                    WidgetStateProperty.all(const TextStyle(fontSize: 20)),
              ),
              onPressed: () {
                print("Clicked");
              },
              onLongPress: () {},
              child: const Text("Sign in"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  textStyle:
                      WidgetStateProperty.all(const TextStyle(fontSize: 20)),
                  minimumSize: WidgetStateProperty.all(const Size(100, 50)),
                  foregroundColor: WidgetStateProperty.all(Colors.amber),
                ),
                onPressed: () {
                  print("Sign up");
                },
                child: const Text("Sign up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
