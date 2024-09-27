// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEXT"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.home),
        actions: [
          const Icon(Icons.search),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        elevation: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Text(
                    "Select your Gender",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                        value: 'male',
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                        value: 'female',
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Other"),
                    leading: Radio(
                        value: 'other',
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Marital status',
                    style: TextStyle(fontSize: 20),
                  ),
                  RadioListTile(
                      title: Text('Married'),
                      value: 'married',
                      groupValue: status,
                      onChanged: (String? value) {
                        setState(() {
                          status = value;
                        });
                      }),
                  RadioListTile(
                      activeColor: Colors.red,
                      title: Text('Single'),
                      value: 'single',
                      groupValue: status,
                      onChanged: (String? value) {
                        setState(() {
                          status = value;
                        });
                      }),
                  Text(
                    '$status',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
