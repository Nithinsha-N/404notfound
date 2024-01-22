import 'package:eroor2/body.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyAPP() ,
    );
  }
}

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}