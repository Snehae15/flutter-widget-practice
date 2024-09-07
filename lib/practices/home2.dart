import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/practices/login.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Login"),
                // tileColor: Colors.cyan,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Log()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Register"),
                // tileColor: Colors.cyan,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Log()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("View Mark"),
                // tileColor: Colors.cyan,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
