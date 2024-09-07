import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/register.dart';

import 'login.dart';


class Connection extends StatefulWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        Icon(Icons.more_vert),],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person
        ),
            label: "Contact"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.home
        ),
            label: "Chats"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.message
        ),
            label: "Home"
        ),
      ],
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Login"),
              tileColor: Colors.blueGrey,
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Log()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Registration"),
              tileColor: Colors.blue,
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("number 2"),
              tileColor: Colors.amber,
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
          ),
        ],
      ),

    );
  }
}

