// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*A material design widget that dispalys a horizontal row of tabs */
import 'package:flutter/material.dart';

class Tabbars extends StatefulWidget {
  const Tabbars({super.key});

  @override
  State<Tabbars> createState() => _TabbarsState();
}

class _TabbarsState extends State<Tabbars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls ",
              ),
            ],
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
//boxsizeindicator
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.amberAccent),
          ),
          title: Text("Appbar"),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          elevation: 50,
        ),
        body: TabBarView(children: [
          Center(
            child: Text(
              "Community",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Chats",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Updates",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}
