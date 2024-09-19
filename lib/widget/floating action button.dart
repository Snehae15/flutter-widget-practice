// ignore_for_file: prefer_const_constructors

/* A material design floating action button.
A floating button is a circular icon that hovers content to promote a primary action
in the application.As the name suggests,this widget/Button floats on top of the other widget on the screen */
import 'package:flutter/material.dart';

class FloatingButtons extends StatefulWidget {
  const FloatingButtons({super.key});

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  int indexNum = 0;
  List tabWidget = const [
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
        //2nd method
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   label: Text("share"),
        //   icon: Icon(Icons.share),
        // ),
        //addlocation
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            //short size
            mini: false,
            //mouseovercontent
            tooltip: "Share",
            // foregroundColor: Colors.red,
            backgroundColor: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Icon(Icons.share)
            // Text("send"),
            ),
        body: Center(
          child: tabWidget.elementAt(indexNum),
        ));
  }
}
