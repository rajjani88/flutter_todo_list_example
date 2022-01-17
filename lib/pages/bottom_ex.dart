import 'package:flutter/material.dart';

class BottomEx extends StatefulWidget {
  const BottomEx({Key? key}) : super(key: key);

  @override
  _BottomExState createState() => _BottomExState();
}

class _BottomExState extends State<BottomEx> {
  var selectedIndex = 0;
  var itemsList = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.av_timer), label: "Time"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {
              print("selected index : $selectedIndex");
            });
          },
          currentIndex: selectedIndex,
          items: itemsList),
      body: Column(
        children: [Container()],
      ),
    );
  }
}
