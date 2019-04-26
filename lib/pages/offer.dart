import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  @override
  _OfferState createState() => new _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "Offer",
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
