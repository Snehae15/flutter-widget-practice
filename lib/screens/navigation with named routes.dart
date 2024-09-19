// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationNamed extends StatefulWidget {
  const NavigationNamed({super.key});

  @override
  State<NavigationNamed> createState() => _NavigationNamedState();
}

class _NavigationNamedState extends State<NavigationNamed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation with named routes"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Product page",
                  style: TextStyle(fontSize: 20),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "About page",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "News page",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Hi Manu,Baggu,Athu,Saju,Hari,Visu,Nihu,Athi,Ashu",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontFeatures: List.empty(growable: true),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
