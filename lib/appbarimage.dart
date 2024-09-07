import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imagesapp extends StatefulWidget {
  const Imagesapp({Key? key}) : super(key: key);

  @override
  State<Imagesapp> createState() => _ImagesappState();
}

class _ImagesappState extends State<Imagesapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar!'),
        flexibleSpace: Image(
          image: AssetImage('assets/download.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(),
    );
  }

}