import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => new _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "About",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0F6B6B)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
