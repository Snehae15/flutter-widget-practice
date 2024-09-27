// A Material Design card:a panel with slightly rounded corners and an elevation shadow
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Color(0xFF607D8B),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text('Staring Mohanlal'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Aadu jeevitham"),
                    subtitle: Text('Staring Prithvi raj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Vikram"),
                    subtitle: Text('Staring Kamal hassan'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.blueGrey,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Kaduva"),
                    subtitle: Text('Staring Prithviraj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text('Staring Mohanlal'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Aadu jeevitham"),
                    subtitle: Text('Staring Prithvi raj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Vikram"),
                    subtitle: Text('Staring Kamal hassan'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.blueGrey,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Kaduva"),
                    subtitle: Text('Staring Prithviraj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Lucifer"),
                    subtitle: Text('Staring Mohanlal'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Aadu jeevitham"),
                    subtitle: Text('Staring Prithvi raj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Vikram"),
                    subtitle: Text('Staring Kamal hassan'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.red,
              color: Colors.blueGrey,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Kaduva"),
                    subtitle: Text('Staring Prithviraj'),
                    textColor: Colors.amberAccent,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
