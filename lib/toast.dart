import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Toast Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showToast();
          },
          child: Text('Show Toast'),
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'This is a toast message',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
