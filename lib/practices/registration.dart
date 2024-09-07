import 'package:flutter/material.dart';

class StudentRegister extends StatefulWidget {
  const StudentRegister({Key? key});

  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  final TextEditingController name = TextEditingController();
  final TextEditingController department = TextEditingController();
  final TextEditingController registerno = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                Text(
                  "Department",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: department,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your department';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                Text(
                  "Register No",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: registerno,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Register No';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                Text(
                  "Phone",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (formkey.currentState!.validate()) {
      // Form is valid, proceed with form submission
      // Access form field values
      final String nameValue = name.text;
      final String departmentValue = department.text;
      final String registerNoValue = registerno.text;
      final String phoneValue = phone.text;
      final String emailValue = email.text;
      final String passwordValue = password.text;

      // Here, you can process the form data as needed
      // For demonstration, let's show a toast message
    }
  }
}
