import 'package:finance_app/src/pages/home.dart';
import 'package:finance_app/src/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFFECF0F1),
        scaffoldBackgroundColor: Color(0xFFECF0F1)
      ),
      home: BottomNavigationWidget()
    );
  }
}
