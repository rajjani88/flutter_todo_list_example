import 'package:flutter/material.dart';
import 'package:flutter_todo_list/pages/demo2.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Demo2()));
                  },
                  child: Container(
                    height: 68,
                    width: 68,
                    child: Hero(
                        tag: "img", child: Image.asset("assets/mockup.jpg")),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
