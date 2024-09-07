import 'package:flutter/material.dart';

void main() {
  runApp(ChessboardApp());
}

class ChessboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chessboard'),
        ),
        body: Chessboard(),
      ),
    );
  }
}

class Chessboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the size of the chessboard (8x8)
    final int rows = 8;
    final int cols = 8;

    // Create an empty list to store chessboard squares
    List<Widget> squares = [];

    // Create the chessboard pattern
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        // Determine the background color of each square based on row and column
        Color squareColor = (row + col) % 2 == 0 ? Colors.white : Colors.black;

        // Create a Container widget for each square
        Widget square = Container(
          width: 50.0, // Adjust the size of the squares as needed
          height: 50.0,
          color: squareColor,
        );

        // Add the square to the list of squares
        squares.add(square);
      }
    }

    // Create the chessboard using a GridView
    return GridView.count(
      crossAxisCount: cols, // Number of columns
      children: squares, // List of squares
    );
  }
}
