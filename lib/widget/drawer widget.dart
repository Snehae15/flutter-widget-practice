// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*a drawer is an invisible slide screen. its is a sliding left menu that generally
contains important links in the applications and occupies half of the screen when displayed */
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Widget"),
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
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("John smith"),
                accountEmail: Text("johnsmith@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/sachin.jpg'),
                  //change background color of image
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                iconColor: Colors.white,
                title: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.white,
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.white,
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                iconColor: Colors.white,
                title: Text(
                  "Sign out",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
        body: null);
  }
}
