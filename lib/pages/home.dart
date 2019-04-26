import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "Home",
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
