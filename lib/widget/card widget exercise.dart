//create a social media post using card widget
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cardwidgetexcercise extends StatefulWidget {
  const Cardwidgetexcercise({super.key});

  @override
  State<Cardwidgetexcercise> createState() => _CardwidgetexcerciseState();
}

class _CardwidgetexcerciseState extends State<Cardwidgetexcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
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
              elevation: 25,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Moana"),
                    subtitle: Text("10 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/moana.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute puppy"),
                  ),
                  Image.asset('assets/images.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Anna"),
                    subtitle: Text("20 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/anna.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute puppy"),
                  ),
                  Image.asset('assets/download (1).jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("John doe"),
                    subtitle: Text("5 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/person.png'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute puppy"),
                  ),
                  Image.asset('assets/download (2).jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Alia"),
                    subtitle: Text("5 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/alia.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute cat"),
                  ),
                  Image.asset('assets/cat1.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Virat kohli"),
                    subtitle: Text("2 hr ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/virat.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute chick"),
                  ),
                  Image.asset('assets/chick.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Anushka"),
                    subtitle: Text("1 hr ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/anushka.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute cat"),
                  ),
                  Image.asset('assets/cat2.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Alia"),
                    subtitle: Text("5 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/alia.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute cat"),
                  ),
                  Image.asset('assets/cat1.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Alia"),
                    subtitle: Text("5 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/alia.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Cute cat"),
                  ),
                  Image.asset('assets/cat1.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
