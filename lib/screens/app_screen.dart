import 'package:flutter/material.dart';
import 'package:nimbus/screens/main_screen.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nimbus Delievry",
      theme: ThemeData(
          primaryColor: Colors.blueAccent
      ),
      home: MainScreen(),
    );
  }
}