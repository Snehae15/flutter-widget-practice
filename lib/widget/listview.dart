import 'package:flutter/material.dart';

class Listviews extends StatefulWidget {
  const Listviews({super.key});

  @override
  State<Listviews> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listviews> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView '),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle for ${items[index]}'),
            onTap: () {
              // Handle tap on the ListTile
              print('${items[index]} tapped!');
            },
          );
        },
      ),
    );
  }
}
