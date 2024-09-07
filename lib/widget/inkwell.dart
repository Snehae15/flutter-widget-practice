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
                  ))),
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
