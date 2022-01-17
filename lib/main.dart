import 'package:flutter/material.dart';
import 'package:flutter_todo_list/pages/bottom_ex.dart';
import 'package:flutter_todo_list/pages/demo.dart';
import 'package:flutter_todo_list/pages/home.dart';
import 'package:flutter_todo_list/pages/splash_screen.dart';
import 'package:flutter_todo_list/pages/stack_ex.dart';

import 'pages/dialog_ex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomEx(),
    );
  }
}
