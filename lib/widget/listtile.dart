import 'package:flutter/material.dart';

class Listtits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile with Border'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Add the action you want the leading button to perform here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add the action you want the trailing button to perform here
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text('List Item 1'),
              subtitle: Text('List item description 1'),
              leading: Icon(Icons.rectangle),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 1 pressed!');
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.greenAccent,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text('List Item 2'),
              subtitle: Text('List item description 2'),
              leading: Icon(Icons.circle),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 2 pressed!');
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text('List Item 3'),
              subtitle: Text('List item description 3'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add the action you want the ListTile to perform here
                print('ListTile 3 pressed!');
              },
            ),
          ),
        ],
      ),
    );
  }
}
