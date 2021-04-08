import 'package:flutter/material.dart';

import 'home_page.dart';

class TabPage extends StatefulWidget{
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _page = [
    HomePage(),
    Text('page2'),
    Text('page3'),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : Center(child:_page[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Account')),
      ]),
    );
  }


  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}