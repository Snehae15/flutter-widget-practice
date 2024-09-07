import 'package:flutter/material.dart';

void main() {
  runApp(const InfoCardApp());
}

class InfoCardApp extends StatelessWidget {
  const InfoCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Info Card Layout'),
        ),
        body: const Center(
          child: InfoCard(),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Row with Icon and Title
          Row(
            children: const [
              Icon(
                Icons.info_outline,
                size: 30,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Text(
                'Info Card Title',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Description Column
          const Text(
            'This is a detailed description of the info card. It provides information about the card content in a structured and clean format.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 20),
          // Button Row
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // View button action
                },
                child: const Text(
                  'View',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Edit button action
                },
                child: const Text(
                  'Edit',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
