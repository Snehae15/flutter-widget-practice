// A circle that represents a user, typically used with a user's profile images,
// or, in the absence of such an image, the user's initials.
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CircleAvatars extends StatefulWidget {
  const CircleAvatars({Key? key}) : super(key: key);

  @override
  _CircleAvatarsState createState() => _CircleAvatarsState();
}

class _CircleAvatarsState extends State<CircleAvatars> {
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
          elevation: 0, // You can adjust the elevation as needed.
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  // text
                  title: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.amberAccent,
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                  ),
                ),
              ),
              //rounded circle avatar
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.amberAccent,
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                  ),
                ),
              ),
//verified avatar
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(
                    Icons.verified_user,
                    size: 50,
                  ),
                ),
              ),
//network image inside circle avatar
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                ),
              ),
//image circle avatar
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/tom.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/jerry.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images.jpg'),
                ),
              ),
            ],
          ),
        ));
  }
}
