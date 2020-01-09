import 'package:aboutbetta3/screens/gallery.dart';
import 'package:flutter/material.dart';
import 'package:aboutbetta3/screens/homePage.dart';
import 'package:aboutbetta3/screens/gallery.dart';
import 'package:aboutbetta3/screens/about.dart';
import 'package:aboutbetta3/screens/apl.dart';


class MainPage extends StatefulWidget {

  static const routeName = '/MainPage';

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;
 List<Widget> _layoutPage = [
    HomePage(),
    Gallery(),
    About(),
  Apl(),
 ];

  void _onItemTapped(int index) {
    setState(() {
     selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _layoutPage.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.grey,
          ),
      BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Gallery'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('More Info'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('App Info'),
            backgroundColor: Colors.grey,
          ),
          
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}