import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/about_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/info1.dart';
import 'package:flash_chat/screens/exercise.dart';
import 'package:flash_chat/Home.dart';

class Home extends StatefulWidget {
  int _selectedIndex=0;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex=0;
  List listOfPages=[
    MyHomePage(title: "Medtrackz",),
    InfoScreen(),
    ChatScreen(),
    workout(),
    About(),






  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:listOfPages[_selectedIndex],

        bottomNavigationBar: BottomNavyBar(
          curve: Curves.elasticInOut,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;

          }),

          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.pink
            ),

            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Information'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Chat'),
                activeColor: Colors.purpleAccent
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.fitness_center),
                title: Text('workout'),
                activeColor: Colors.blue
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('About'),
                activeColor: Colors.pink
            ),


          ],
        )
    );
  }
}


