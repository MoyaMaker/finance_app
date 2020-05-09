import 'package:finance_app/src/pages/home.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
           border: Border(
             top: BorderSide(width: 1.0, color: Color(0xFF95A5A6))
           )
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color(0xFFECF0F1),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35.0,
          unselectedFontSize: 1.0,
          selectedFontSize: 1.0,
          elevation: 1.0,
          unselectedItemColor: const Color.fromRGBO(44, 62, 80, 0.80),
          selectedItemColor: const Color(0xFF1ABC9C),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              title: Text("History"),
              icon: Icon(Icons.history)
            ),
            BottomNavigationBarItem(
              title: Text("Settings"),
              icon: Icon(Icons.settings)
            )
          ]
        ),
      ),
    );
  }
}