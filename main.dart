import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(NadlandApp());
}

class NadlandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nadland',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(),
    );
  }
}