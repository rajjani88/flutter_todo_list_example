import 'package:flutter/material.dart';

class DialogEx extends StatefulWidget {
  const DialogEx({Key? key}) : super(key: key);

  @override
  _DialogExState createState() => _DialogExState();
}

class _DialogExState extends State<DialogEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("I am Dialog"),
                          children: [
                            Container(
                              child: Text("Body"),
                            )
                          ],
                        );
                      });
                },
                child: Text("Show Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure"),
                        );
                      });
                },
                child: Text("Show Alert Dialog"))
          ],
        ),
      ),
    ));
  }
}
