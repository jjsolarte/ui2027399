import 'package:flutter/material.dart';
import 'package:ui2027399/ui/Instagram_Sena.dart';
import 'package:ui2027399/ui/LinearUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: InstagramSena(),
    );
  }
}

