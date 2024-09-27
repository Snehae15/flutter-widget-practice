import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URLcaunchers extends StatefulWidget {
  const URLcaunchers({Key? key});

  @override
  State<URLcaunchers> createState() => _URLcaunchersState();
}

class _URLcaunchersState extends State<URLcaunchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to url launcher"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              const url = 'https://pub.dev/packages/url_launcher';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true, enableJavaScript: true);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Center(
              child: Text(
                "Want to Read Article? Tap Here",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () async {
              const phoneNumber = 'tel:+1234567890';
              if (await canLaunch(phoneNumber)) {
                await launch(phoneNumber);
              } else {
                throw 'Could not launch $phoneNumber';
              }
            },
            child: Center(
              child: Text(
                "Call Us",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
