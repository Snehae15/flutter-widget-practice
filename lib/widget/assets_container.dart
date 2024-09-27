import 'package:flutter/material.dart';

class ImageInContainerExample extends StatelessWidget {
  const ImageInContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image in Container Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container for output.gif without decoration
            Container(
              padding:
                  const EdgeInsets.all(10), // Adds padding around the image
              child: Image.asset(
                'assets/img.png',
                height: 200,
                scale: 2.5,
                opacity: const AlwaysStoppedAnimation<double>(0.5),
              ),
            ),
            const SizedBox(height: 20), // Adds space between images
            // Container for geeksforgeeks.jpg without decoration
            Container(
              padding:
                  const EdgeInsets.all(10), // Adds padding around the image
              child: Image.asset(
                'assets/img.png',
                height: 400,
                width: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
