import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_todo_list/pages/demo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  doSPlash() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Demo()));
    });
  }

  @override
  void initState() {
    doSPlash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "I am Splash Screen",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
