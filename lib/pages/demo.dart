import 'package:flutter/material.dart';
import 'package:flutter_todo_list/pages/demo2.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var pageList = [
    PageViewModel(
      title: "Title of first page",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Image.asset(
        "assets/img1.png",
        height: 150,
      ),
    ),
    PageViewModel(
      title: "Title of Second Page page",
      body: "second Page",
      image: Image.asset(
        "assets/img2.png",
        height: 150,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: pageList,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        // When done button is press
      },
      showNextButton: false,
      showSkipButton: false,
      showDoneButton: true,
    ));
  }
}


/*

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

*/
