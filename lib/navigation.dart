import 'package:bloemvalley/pages/about.dart';
import 'package:bloemvalley/pages/help.dart';
import 'package:bloemvalley/pages/home.dart';
import 'package:bloemvalley/pages/inbox.dart';
import 'package:bloemvalley/pages/offer.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => new _NavigationState();
}

class _NavigationState extends State<Navigation>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new PageView(
          children: <Widget>[Home(), Offer(), About(), Inbox(), Help()],
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe800, fontFamily: 'botnav'),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xf024, fontFamily: 'botnav'),
              ),
              title: Text('Offers'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xf304, fontFamily: 'botnav'),
              ),
              title: Text('About'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xf4f0, fontFamily: 'botnav'),
              ),
              title: Text('Inbox'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe801, fontFamily: 'botnav'),
              ),
              title: Text('Help'),
            ),
          ],
          onTap: onTap,
          currentIndex: page,
          fixedColor: Colors.black,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(
      () {
        this.page = page;
      },
    );
  }
}
