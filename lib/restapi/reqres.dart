import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReqResApi extends StatefulWidget {
  @override
  _ReqResApiState createState() => _ReqResApiState();
}

class _ReqResApiState extends State<ReqResApi> {
  List<dynamic> _users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users'));

    if (response.statusCode == 200) {
      setState(() {
        _users = json.decode(response.body)['data'];
      });
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReqRes API Demo'),
      ),
      body: _users.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_users[index]['avatar']),
                  ),
                  title: Text(_users[index]['first_name'] +
                      ' ' +
                      _users[index]['last_name']),
                  subtitle: Text(_users[index]['email']),
                );
              },
            ),
    );
  }
}
