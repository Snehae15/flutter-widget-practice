// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textfields extends StatefulWidget {
  const Textfields({super.key});

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        elevation: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //simple text widget
              children: [
                TextField(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 167, 208, 229),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "User name",
                    hintText: "Enter your user name",
                    prefixIcon: Icon(Icons.verified_user),
                    suffix: Icon(Icons.verified),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "User name",
                    hintText: "Enter your user name",
                    prefixText: "Mr.",
                    suffixText: "Hello",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "User name",
                      hintText: "Enter your user name",
                      helperText: "Enter your user name or email",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.yellow,
                      ),
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                          fontStyle: FontStyle.italic)),
                ),
                TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  maxLength: 10,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple, width: 5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                    label: Text("User name"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.amber),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
