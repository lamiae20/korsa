import 'package:flutter/material.dart';
import 'welcom_page.dart';

const d_red = Color.fromARGB(255, 4, 32, 189);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pass Pass',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
