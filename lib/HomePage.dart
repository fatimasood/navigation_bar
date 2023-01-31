import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'This is your Home Page',
      style: TextStyle(
          fontSize: 20, color: Colors.cyan, fontWeight: FontWeight.bold),
    ),
    Text(
      'This is your Email Page',
      style: TextStyle(
          fontSize: 20, color: Colors.cyan, fontWeight: FontWeight.bold),
    ),
    Text(
      'This is your Phone Page',
      style: TextStyle(
          fontSize: 20, color: Colors.cyan, fontWeight: FontWeight.bold),
    ),
    Text(
      'This is your Settings Page',
      style: TextStyle(
          fontSize: 20, color: Colors.cyan, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff000082),
        title: const Text(
          'Navigation Bar',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: HomePage._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xff000082)),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Mail',
              backgroundColor: Color(0xff000082)),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Phone',
              backgroundColor: Color(0xff000082)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Color(0xff000082)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
