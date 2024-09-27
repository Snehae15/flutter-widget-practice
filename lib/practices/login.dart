import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:work/reg.dart';
import 'package:work/viewnotification.dart';

import '../const.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  var username = TextEditingController();
  var password = TextEditingController();
  Future<void> getData() async {
    var data = {
      "username": username.text,
      "password": password.text,
    };
    var response = await post(Uri.parse('${Con.url}login.php'), body: data);
    var res = jsonDecode(response.body);
    print(res);
    if (response.statusCode == 200) {
      if (res['message'] == 'User Successfully LoggedIn') {
        Fluttertoast.showToast(msg: 'Successfully Login...');
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Notifications();
          },
        ));
      }
    } else {
      Fluttertoast.showToast(msg: 'Something went wrong!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign In'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 22, right: 28, left: 28, bottom: 10),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28, bottom: 10),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  getData();
                },
                child: Container(
                  child: Center(child: Text('Login')),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF5F9EA0),
                  ),
                  height: 50,
                  width: 200,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register1()));
                  },
                  child: Text("Don't have any account please login her!"))
            ],
          ),
        ),
      ),
    );
  }
}
