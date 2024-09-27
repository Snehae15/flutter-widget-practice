import 'package:flutter/material.dart';

class MultipleContainer extends StatefulWidget {
  const MultipleContainer({super.key});

  @override
  State<MultipleContainer> createState() => _MultipleContainerState();
}

class _MultipleContainerState extends State<MultipleContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Containers Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.blue,
              margin: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  'Container 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.green,
              margin: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  'Container 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.orange,
              margin: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  'Container 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
