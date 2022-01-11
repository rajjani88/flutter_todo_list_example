import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            child: Hero(tag: "img", child: Image.asset("assets/mockup.jpg")),
          )
        ],
      ),
    );
  }
}
