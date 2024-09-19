import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEXT"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.home),
        actions: [
          const Icon(Icons.search),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        elevation: 20,
      ),
      body: Column(children: [
        Image.asset(
          'assets/download (1).jpg',
          height: 100,
          width: 100,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.deepOrangeAccent,
          child: Image.asset(
            'assets/download (2).jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          height: 200,
          width: 200,
          child: Image.network(
            'data:image/jpeg;base64,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',
            fit: BoxFit.fitWidth,
          ),
        ),
      ]),
    );
  }
}
