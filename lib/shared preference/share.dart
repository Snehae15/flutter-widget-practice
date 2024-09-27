import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedReg extends StatefulWidget {
  const SharedReg({super.key});

  @override
  State<SharedReg> createState() => _SharedRegState();
}

class _SharedRegState extends State<SharedReg> {
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  List L = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('Name'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text('Department'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: department,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text('Phone No'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: phone,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text('Email'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text('Password'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: InkWell(
              onTap: () async {
                // print(name.text);
                SharedPreferences spref = await SharedPreferences.getInstance();
                spref.setString('name', name.text);
                spref.setString('department', department.text);
                spref.setString('phone', phone.text);
                spref.setString('email', email.text);
                spref.setString('password', password.text);

                var nm = spref.getString('name');
                var ab = spref.getString('department');
                var ph = spref.getString('phone');
                var em = spref.getString('email');
                var pw = spref.getString('password');
                print('data : $nm');
                print(ab);
                print(ph);
                print(em);
                print(pw);
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
