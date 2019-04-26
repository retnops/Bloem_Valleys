import 'dart:async';

import 'package:bloemvalley/navigation.dart';
import 'package:bloemvalley/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Bloem Valley's",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Colors.grey,
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/navigation': (BuildContext context) => new Navigation(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() async {
//    SharedPreferences userSP = await SharedPreferences.getInstance();
//    bool isLoggedin = userSP.getBool('loggedin');
//    if (isLoggedin == null) {
    Navigator.of(context).pushReplacementNamed('/navigation');
//    } else if (isLoggedin) {
//      Navigator.of(context).pushReplacementNamed('/home_page');
//    }
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xFF0F6B6B),
//      backgroundColor: Colors.amber,
      body: new Center(
        child: Container(
            width: 280.0,
            child: Hero(
              tag: 'hero',
              child: new Image.asset('assets/images/bv05.png'),
            )),
      ),
    );
  }
}
