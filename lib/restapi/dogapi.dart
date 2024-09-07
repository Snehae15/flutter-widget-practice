import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dogapi extends StatefulWidget {
  @override
  _DogapiState createState() => _DogapiState();
}

class _DogapiState extends State<Dogapi> {
  String _dogImageUrl = '';

  @override
  void initState() {
    super.initState();
    fetchDogImage();
  }

  Future<void> fetchDogImage() async {
    try {
      final response =
          await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

      if (response.statusCode == 200) {
        setState(() {
          _dogImageUrl = json.decode(response.body)['message'];
        });
      } else {
        throw Exception('Failed to load dog image');
      }
    } catch (e) {
      print('Error fetching dog image: $e');
      // Handle error gracefully, such as displaying an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Dog Image'),
      ),
      body: Center(
        child: _dogImageUrl.isEmpty
            ? CircularProgressIndicator()
            : Image.network(
                _dogImageUrl,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return CircularProgressIndicator();
                  }
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Text('Failed to load dog image');
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchDogImage,
        tooltip: 'New Dog',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
