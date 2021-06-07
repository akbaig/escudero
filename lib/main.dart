import 'package:flutter/material.dart';
import 'screens/intro1.dart';
import 'screens/intro2.dart';
import 'screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Register(),
      debugShowCheckedModeBanner: false,
    );
  }
}




