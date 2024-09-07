import 'package:flutter/material.dart';

class Rad extends StatefulWidget {
  const Rad({Key? key}) : super(key: key);

  @override
  State<Rad> createState() => _RadState();
}

class _RadState extends State<Rad> {
  String? gen;

  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(children: [
              Text(
                'Select your Gender',
              ),
              ListTile(
                title: Text("Male"),
                leading: Radio(
                    value: 'male',
                    groupValue: gen,
                    onChanged: (radio) {
                      setState(() {
                        gen = radio;
                      });
                    }),
              ),
              ListTile(
                title: Text("Female"),
                leading: Radio(
                    value: 'female',
                    groupValue: gen,
                    onChanged: (rad) {
                      setState(() {
                        gen = rad;
                      });
                    }),
              ),
              ListTile(
                title: Text("Other"),
                leading: Radio(
                    value: 'other',
                    groupValue: gen,
                    onChanged: (rad) {
                      setState(() {
                        gen = rad;
                      });
                    }),
              ),
            ]),
          ),
          Container(
            child: Column(
              children: [
                Text("Marital Status"),
                RadioListTile(
                    title: Text("Married"),
                    value: 'Married',
                    groupValue: status,
                    onChanged: (rad) {
                      setState(() {
                        status = rad;
                      });
                    }),
                RadioListTile(
                    title: Text("UnMarried"),
                    value: 'UnMarried',
                    groupValue: status,
                    onChanged: (rad) {
                      setState(() {
                        status = rad;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
