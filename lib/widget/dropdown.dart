import 'package:flutter/material.dart';

class Dropdowns extends StatefulWidget {
  const Dropdowns({Key? key}) : super(key: key);

  @override
  State<Dropdowns> createState() => _DropdownsState();
}

class _DropdownsState extends State<Dropdowns> {
  String? _selectedItem;

  // List of dropdown items
  List<String> _dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dropdown Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: _selectedItem,
          items: _dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
          },
        ),
      ),
    );
  }
}
