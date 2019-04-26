import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => new _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "Help",
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
