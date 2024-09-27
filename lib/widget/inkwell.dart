/*InkWell is the material widget in flutter.
It responds to the touch action as performed by the user.
Inkwell will respond when the user clicks the button.
There are so many gestures like double-tap, long press, tap down, etc.
We can set the radius of the inkwell widget using radius and also border-radius using borderRadius. 
We can give the splash color using splashColor and can do a lot of things. */

import 'package:flutter/material.dart';

class Inkwellpage extends StatefulWidget {
  @override
  _InkwellpageState createState() => _InkwellpageState();
}

class _InkwellpageState extends State<Inkwellpage> {
  String inkwell = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Widget'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell = 'Inkwell Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell = 'InkWell Long Pressed';
                });
              },
              child: Container(
                color: Colors.redAccent,
                width: 120,
                height: 70,
                child: Center(
                  child: Text(
                    'Inkwell',
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                inkwell,
                textScaleFactor: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
