import 'package:finance_app/src/utils/custom_colors.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:finance_app/src/pages/config_page.dart';
import 'package:finance_app/src/pages/history.dart';
import 'package:finance_app/src/pages/home_page.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  Widget _activePage = HomePage();
  int _activeIndexPage = 0;

  final List<Widget> _pages = <Widget>[
    HomePage(),
    HistoryPage(),
    ConfigPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _activePage,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
           border: Border(
             top: BorderSide(width: 1.0, color: Color(0xFF95A5A6))
           )
        ),
        child: BottomNavigationBar(
          currentIndex: _activeIndexPage, // Current index
          backgroundColor: CustomColors.background,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35.0,
          unselectedFontSize: 1.0,
          selectedFontSize: 1.0,
          elevation: 1.0,
          unselectedItemColor: CustomColors.unselected,
          selectedItemColor: CustomColors.main,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              title: Text('History'),
              icon: Icon(Icons.history)
            ),
            BottomNavigationBarItem(
              title: Text('Settings'),
              icon: Icon(Icons.settings)
            )
          ],
          onTap: (int indexItem) => _setActivePage(indexItem),
        ),
      ),
    );
  }


  /// Set actual the active widget
  void _setActivePage(int index) {
    _activePage = _pages[index];
    _activeIndexPage = index;
    setState(() {});
  }
}