import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin-main_upload.dart';
import 'admin_home.dart';

class AdminDashboardScreen extends StatefulWidget {
  @override
  AdminDashboardScreenState createState() => AdminDashboardScreenState();
}

class AdminDashboardScreenState extends State<AdminDashboardScreen> {
  var size;

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    AdminHome(),
    AdminUpload(),
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: ('Upload'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
