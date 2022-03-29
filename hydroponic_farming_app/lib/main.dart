import 'package:flutter/material.dart';
import 'package:hydroponic_farming_app/app/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hydroponic Farming',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LandingPage(),
    );
  }
}
