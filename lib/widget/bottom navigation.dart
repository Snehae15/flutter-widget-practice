// ignore_for_file: prefer_const_constructors

/*A material widget that dispalyed at the bottom of the app for selecting among a small number of views,
typically between three and five */
import 'package:flutter/material.dart';

class Bottomnavigations extends StatefulWidget {
  const Bottomnavigations({super.key});

  @override
  State<Bottomnavigations> createState() => _BottomnavigationsState();
}

class _BottomnavigationsState extends State<Bottomnavigations> {
  int indexNum = 0;
  List tabWidget = [
    Text("Home", style: TextStyle(fontSize: 40)),
    Text("Person", style: TextStyle(fontSize: 40)),
    Text("Dashboard", style: TextStyle(fontSize: 40)),
    Text("Settings", style: TextStyle(fontSize: 40)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom navigation"),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 50,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
                backgroundColor: Colors.orange),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Dashbord",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.black),
          ],
          iconSize: 25,
          // selectedFontSize: 30,
          //  showSelectedLabels: false,
          // showUnselectedLabels: true,
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          },
        ),
        body: Center(
          child: tabWidget.elementAt(indexNum),
        ));
  }
}
