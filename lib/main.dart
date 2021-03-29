import 'package:flutter/material.dart';
import 'package:sastobazar/screens/home_page.dart';
import 'package:sastobazar/screens/login.dart';
import 'package:sastobazar/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SastoBazar',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Color(0xFFFF1E00)),
      home: HomePage(),
    );
  }
}
