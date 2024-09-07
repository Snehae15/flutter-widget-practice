import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'editpro.dart';
import 'home2.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int currentindex=0;
  final pages=[
    Home2(),
    Editpro(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HOME'),
      //   centerTitle: true,
      // ),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (newIndex){
          setState(() {
            currentindex=newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home,
          ),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.person,
          ),
              label: "profile"
          ),

        ],
      ),
    );
  }
}
