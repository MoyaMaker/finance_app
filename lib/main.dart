import 'package:finance_app/src/utils/custom_colors.dart';
import 'package:finance_app/src/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColors.primary,
        backgroundColor: CustomColors.background,
        scaffoldBackgroundColor: CustomColors.background
      ),
      home: BottomNavigationWidget()
    );
  }
}
