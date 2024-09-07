import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Stack Example'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Red Box',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 150,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Green Box',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
