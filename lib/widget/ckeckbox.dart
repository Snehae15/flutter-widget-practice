import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkboxfun extends StatefulWidget {
  const Checkboxfun({Key? key}) : super(key: key);

  @override
  State<Checkboxfun> createState() => _CheckboxfunState();
}

class _CheckboxfunState extends State<Checkboxfun> {
  bool? valuefirst = false;
  bool? valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Checkbox Example'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Checkbox without Header and Subtitle: ',
                    style: TextStyle(fontSize: 17.0),
                  ),
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value;
                      });
                    },
                  ),
                  Checkbox(
                    value: valuesecond,
                    onChanged: (bool? value) {
                      setState(() {
                        valuesecond = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}