import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView with Separators')),
        body: ListViewSeparatedExample(),
      ),
    );
  }
}

class ListViewSeparatedExample extends StatefulWidget {
  @override
  _ListViewSeparatedExampleState createState() => _ListViewSeparatedExampleState();
}

class _ListViewSeparatedExampleState extends State<ListViewSeparatedExample> {
  // List of items for the ListView
  final List<String> items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.grey,  // Customize the separator color
          thickness: 1,        // Thickness of the divider
        );
      },
    );
  }
}
