import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var iconClrLike = Colors.black;
  var iconClrDislike = Colors.black; // Declare and initialize iconClrDislike
  var dspText = "Hello world";

  void changeText() {
    setState(() {
      dspText = "Good morning";
    });
  }

  void changeTexts() {
    setState(() {
      dspText = "Hello world";
    });
  }

  void changeClrLike() {
    setState(() {
      if (iconClrLike == Colors.red) {
        iconClrLike = Colors.black;
      } else {
        iconClrLike = Colors.red;
      }
    });
  }

  void changeClrDisLike() {
    setState(() {
      if (iconClrDislike == Colors.red) {
        iconClrDislike = Colors.black;
      } else {
        iconClrDislike = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dspText,
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeText();
                },
                child: Text(
                  "Change Text",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeTexts();
                },
                child: Text(
                  "Hello World",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    changeClrLike();
                  },
                  icon: Icon(Icons.thumb_up),
                  iconSize: 40,
                  color: iconClrLike,
                ),
                IconButton(
                  onPressed: () {
                    changeClrDisLike();
                  },
                  icon: Icon(Icons.thumb_down),
                  iconSize: 40,
                  color: iconClrDislike,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
