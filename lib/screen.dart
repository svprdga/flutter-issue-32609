import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);

  @override
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: IconButton(
            padding: EdgeInsets.only(top: 42, left: 16),
            icon: Image.asset('res/icon/ic_arrow_back.png',
                width: 54,
                height: 54,
                fit: BoxFit.none,
                package: 'flutter_issue_32609'),
            color: Colors.white,
          ),
        ));
  }
}
