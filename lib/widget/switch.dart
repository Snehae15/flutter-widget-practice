import 'package:flutter/material.dart';
class Switches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch Screen'),
        ),
        body: SwitchScreen(),
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State<SwitchScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material( // Wrap with Material widget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 2,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.blue,
              activeTrackColor: Colors.yellow,
              inactiveThumbColor: Colors.redAccent,
              inactiveTrackColor: Colors.orange,
            ),
          ),
          Text(
            '$textValue',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
