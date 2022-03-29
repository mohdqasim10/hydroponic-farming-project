import 'package:flutter/material.dart';
import 'package:hydroponic_farming_app/app/control/control_page.dart';
import 'package:hydroponic_farming_app/app/home/home_page.dart';
import 'dart:math' as math;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget child = HomePage();
    switch (_index) {
      case 0:
        child = HomePage();
        break;
      case 1:
        child = ControlPage();
        break;
      case 2:
        child = Container();
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        iconSize: 30,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Transform.rotate(
              angle: 270 * math.pi / 180,
              child: Icon(
                Icons.tune_outlined,
                size: 32.0,
              ),
            ),
            label: "Control",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outlined,
            ),
            label: "Info",
          ),
        ],
      ),
    );
  }
}
