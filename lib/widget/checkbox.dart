/* A Material design checkbox.
the checkbox itself does not maintain any state .instead,when the state of the checkbox changes,the
widget calls the onChanged callback and rebuild the checkbox with a new value to update the visual appearance of the checkbox */
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Checkboxss extends StatefulWidget {
  const Checkboxss({super.key});

  @override
  State<Checkboxss> createState() => _CheckboxssState();
}

class _CheckboxssState extends State<Checkboxss> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Widget"),
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
        elevation: 50,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                //to add 3 state in check box:checked,nullchecked,null
                tristate: true,
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    isChecked = val;
                  });
                }),
            Checkbox(
                activeColor: Colors.yellow,
                checkColor: Colors.black,
                value: isChecked1,
                onChanged: (val) {
                  setState(() {
                    isChecked1 = val;
                  });
                }),
            //add checkbox list tile
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                title: Text("Send Notifiwcations"),
                subtitle: Text("Turn on or off notification"),
                tileColor: Colors.amber,
                value: isChecked2,
                onChanged: (val) {
                  setState(() {
                    isChecked2 = val;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                title: Text("Send Notifications"),
                subtitle: Text("Turn on or off notification"),
                tileColor: Colors.red,
                value: isChecked3,
                onChanged: (val) {
                  setState(() {
                    isChecked3 = val;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                title: Text("Send Notifiwcations"),
                subtitle: Text("Turn on or off notification"),
                tileColor: Colors.amber,
                value: isChecked4,
                onChanged: (val) {
                  setState(() {
                    isChecked4 = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
