
import 'package:bizo/ui/screens/top_navigation_screens/paperwork.dart';
import 'package:bizo/ui/screens/top_navigation_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  @override
  createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Home'),
    PaperWork(),
    Text('Notifications'),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), title: Text('PaperWork')),
          BottomNavigationBarItem(icon: Icon(Icons.notification_important), title: Text('Notifications')),  
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        showUnselectedLabels:true,

        onTap: onItemTapped,
      ),
    );
  }

    void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}



