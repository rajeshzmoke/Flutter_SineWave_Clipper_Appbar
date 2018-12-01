import 'package:flutter/material.dart';
import 'package:flutter_sinewave_clipper_appbar/custom_wave_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomClipper(),
    );
  }
}
