// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Scrollingta extends StatefulWidget {
  const Scrollingta({super.key});

  @override
  State<Scrollingta> createState() => _ScrollingtaState();
}

class _ScrollingtaState extends State<Scrollingta> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
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
              Tab(
                text: "Movies",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls ",
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls ",
              ),
              Tab(
                text: "Chats",
              ),
            ],
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
//boxsizeindicator
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent),
            isScrollable: true,
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
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Calls",
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
