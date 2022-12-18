import 'package:flutter/material.dart';
import 'package:intern_assignment/screens/bottom_nav.dart';
import 'package:intern_assignment/screens/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProDisplay',
      ),
      home: BottomNavBar(
        initailIndex: 0,
      ),
    );
  }
}
