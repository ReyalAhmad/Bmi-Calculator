import 'package:bmiapp/home_page.dart';
import 'package:bmiapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}
class BmiApp extends StatefulWidget {
  const BmiApp({ Key? key }) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
