import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Containers with Text and Images'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Container 1',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20), // Add spacing between containers
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Container 2',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20), // Add spacing between containers
            Container(
              width: 150,
              height: 150,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/img.png', // Replace with  image path
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // Add spacing between containers
            Container(
              width: 150,
              height: 150,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png', // Replace with  image path
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
