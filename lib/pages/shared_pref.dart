import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_todo_list/pages/demo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({Key? key}) : super(key: key);

  @override
  _SharedPrefState createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  int? x = 0;
  @override
  void initState() {
    super.initState();
  }

  saveIntValu() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("my_num", 10).then((value) {
      if (value) {
        print("saved");
      } else {
        print("Not saved");
      }
    });
  }

  getIntVal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    x = prefs.getInt("my_num");
    print("val x is $x");
  }

  showText(msg) {
    return Text(
      "$msg",
      style: TextStyle(fontSize: 28),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: [
            showText("int : $x"),
            ElevatedButton(
              onPressed: () {
                saveIntValu();
              },
              child: showText("Save"),
            ),
            ElevatedButton(
                onPressed: () {
                  getIntVal();
                },
                child: showText("GET INT"))
          ],
        )),
      ),
    );
  }
}
