import 'package:flutter/material.dart';

class StackEx extends StatefulWidget {
  const StackEx({Key? key}) : super(key: key);

  @override
  _StackExState createState() => _StackExState();
}

class _StackExState extends State<StackEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.orange,
        ),
        Container(
          height: 200,
          color: Colors.red,
        ),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/img1.png"))),
            ))
      ],
    ));
  }
}
