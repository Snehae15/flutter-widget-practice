// reqres random user api
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RandomUserApi extends StatefulWidget {
  const RandomUserApi({super.key});

  @override
  State<RandomUserApi> createState() => _RandomUserApiState();
}

class _RandomUserApiState extends State<RandomUserApi> {
  List<User> data = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Calling"),
      ),
      body: isLoading
          ? const Center(
              child:
                  CircularProgressIndicator()) // Show loader when data is being fetched
          : data.isEmpty
              ? const Center(
                  child:
                      Text("No data found")) // Show message when data is empty
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                            "${data[index].firstName!} ${data[index].lastName!}"),
                        subtitle: Text(data[index].email!),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data[index].avatar!),
                        ),
                      ),
                    );
                  },
                ),
    );
  }

  Future<void> fetchData() async {
    try {
      final response = await http
          .get(Uri.parse("https://reqres.in/api/users?page=2"))
          .timeout(const Duration(seconds: 20));
      if (response.statusCode == 200) {
        setState(() {
          for (var i in jsonDecode(response.body)["data"]) {
            data.add(User.fromJson(i));
          }
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false; // Stop loading even if there's an error
      });
      print(e.toString());
    }
  }
}

class User {
  String? firstName;
  String? lastName;
  String? email;
  String? avatar;

  User({this.firstName, this.lastName, this.email, this.avatar});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json["first_name"],
      lastName: json["last_name"],
      email: json["email"],
      avatar: json["avatar"],
    );
  }
}
