import 'package:flutter/material.dart';

class Editpro extends StatefulWidget {
  const Editpro({Key? key}) : super(key: key);

  @override
  State<Editpro> createState() => _EditproState();
}

class _EditproState extends State<Editpro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Center(
          child: ListView(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80"),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Name",
                      hintText: "Name ",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "email",
                      hintText: "email",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Phone number",
                      hintText: "Phone number",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 100.0, right: 100.0, top: 8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //if done clicked update
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          //if done clicked update
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[300],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
