import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Img extends StatefulWidget {
  const Img({Key? key}) : super(key: key);

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Image.network(
            'https://example.com/image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
