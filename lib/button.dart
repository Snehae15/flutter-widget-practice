import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'const.dart';

class Button extends StatelessWidget {
  Future<dynamic> getdata() async {
    var ab = await get(Uri.parse('${Con.url}register.php'));
    var abc = jsonDecode(ab.body);
    print(abc);
    return abc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qhire'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getdata();
            //Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
            print('Button clicked!');
          },
          child: Text('Click here'),
        ),
      ),
    );
  }
}
