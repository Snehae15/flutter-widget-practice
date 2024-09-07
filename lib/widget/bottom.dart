import 'package:flutter/material.dart';
import 'package:work/toast.dart';

import 'datetime.dart';
import 'filepicker.dart';

class Bottoms extends StatefulWidget {
  const Bottoms({Key? key}) : super(key: key);

  @override
  State<Bottoms> createState() => _BottomsState();
}

class _BottomsState extends State<Bottoms> {
  int currentindex = 0;
  final pages = [
    const FilePickerApp(),
    FlutterToast(),
    Picker(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined),
              label: "File",
              backgroundColor: const Color.fromARGB(255, 85, 85, 42)),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range_outlined),
              label: "Date&time",
              backgroundColor: Colors.lightBlueAccent),
        ],
      ),
    );
  }
}
