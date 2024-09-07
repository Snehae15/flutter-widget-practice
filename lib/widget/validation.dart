import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Valid extends StatefulWidget {
  const Valid({Key? key}) : super(key: key);

  @override
  State<Valid> createState() => _ValidState();
}

class _ValidState extends State<Valid> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:"user name",hintText: "Enter your user name",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:"Password",hintText: "Enter password",
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
            }, child: Text("LOGIN")),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Dont have an account?, Register'),
            ),
          ],
        ),
      ),
    );
  }
}
