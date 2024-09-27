import 'package:flutter/material.dart';

// Define the ToggleButtonScreen StatefulWidget
class ToggleButtonScreen extends StatefulWidget {
  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  // This list maintains the selection state of the buttons
  List<bool> _isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Toggle Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleButtons(
              // isSelected controls the toggled state
              isSelected: _isSelected,
              // Button Styles
              color: Colors.black, // Unselected button text color
              selectedColor: Colors.white, // Selected button text color
              fillColor: Colors.green, // Selected button background color
              borderColor: Colors.grey, // Border color of all buttons
              selectedBorderColor: Colors.blueAccent, // Border color when selected
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderWidth: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Option 1'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Option 2'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Option 3'),
                ),
              ],
              onPressed: (int index) {
                // Update the state to reflect button presses
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Selected Options: ${_isSelected.toString()}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToggleButtonScreen(),
  ));
}
