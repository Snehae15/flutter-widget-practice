import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NumberApi extends StatefulWidget {
  @override
  _NumberApiState createState() => _NumberApiState();
}

class _NumberApiState extends State<NumberApi> {
  String _fact = '';

  @override
  void initState() {
    super.initState();
    fetchRandomNumberFact();
  }

  Future<void> fetchRandomNumberFact() async {
    final response =
        await http.get(Uri.parse('http://numbersapi.com/random/trivia'));

    if (response.statusCode == 200) {
      setState(() {
        _fact = response.body;
      });
    } else {
      throw Exception('Failed to load number fact');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers API Demo'),
      ),
      body: Center(
        child: _fact.isEmpty
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _fact,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchRandomNumberFact,
        tooltip: 'New Fact',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
