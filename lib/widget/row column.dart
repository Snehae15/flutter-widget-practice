import 'package:flutter/material.dart';

class RowmColumn extends StatefulWidget {
  const RowmColumn({super.key});

  @override
  State<RowmColumn> createState() => _RowmColumnState();
}

class _RowmColumnState extends State<RowmColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //text
        title: const Text("Appbar"),
        centerTitle: true,
        //bg color
        backgroundColor: Colors.green,
        //leading
        leading: const Icon(Icons.home),

        //Action
//action icon not clickable
        actions: [
          const Icon(Icons.search),
          //clickable icons
          // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        //shape
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        //Elevation
        elevation: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          //in order to add space
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
//row column save syntax