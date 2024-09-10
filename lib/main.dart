import 'package:flutter/material.dart';
import 'package:work/restapi/countries.dart';
import 'package:work/restapi/dogapi.dart';
import 'package:work/restapi/random10catapi.dart';
import 'package:work/restapi/reqres.dart';
import 'package:work/restapi/restapi.dart';
import 'package:work/widget/Expand&flex.dart';
import 'package:work/widget/assets_container.dart';
import 'package:work/widget/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get appTitle => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldExample(),
    );
  }
}
