import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/Home_Screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "This my provider testing app",
      home: Home_Screen(),
    );
  }
}
