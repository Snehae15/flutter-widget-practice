import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Heading Text'),
      subtitle: Text('Subtext'),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Perform action when the list item is tapped
      },
    );
  }
}
