import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Random10catapi extends StatefulWidget {
  const Random10catapi({super.key});

  @override
  State<Random10catapi> createState() => _Random10catapiState();
}

class _Random10catapiState extends State<Random10catapi> {
  List<Cat> catList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cat API"),
      ),
      body: catList.isEmpty
          ? const Center(
              child: Text("No data found!"),
            )
          : ListView.separated(
              itemCount: catList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    catList[index].url ?? '',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchData();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future fetchData() async {
    try {
      final response = await http.get(
          Uri.parse("https://api.thecatapi.com/v1/images/search?limit=10"));
      if (response.statusCode == 200) {
        setState(() {
          catList.clear(); // Clear previous data before fetching new data
          for (var i in jsonDecode(response.body)) {
            catList.add(Cat.fromJson(i));
          }
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

class Cat {
  String? id;
  String? url;
  int? width;
  int? height;

  Cat({this.id, this.url, this.width, this.height});

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json['id'],
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'width': width,
      'height': height,
    };
  }
}
