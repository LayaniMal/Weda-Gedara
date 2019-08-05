import 'package:flutter/material.dart';
import 'package:weda_gedara/UI/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weda Gedara',
      home:Splash()
    );
  }
}
