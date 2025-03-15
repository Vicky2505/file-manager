import 'package:file_manager_app/screens/cloud_screen/cloud_screen.dart';
import 'package:file_manager_app/screens/file_screen/file_screen.dart';
import 'package:file_manager_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    FileScreen(),
    CloudScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Color(0xFFFBFBFB),
        selectedItemColor: Color(0xFF7747FD),
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/bottomnav_assets/home_icon.png',
              width: 40,
              height: 40,
              color: _selectedIndex == 0 ? Color(0xFF7747FD) : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/bottomnav_assets/folder_icon.png',
              width: 40,
              height: 40,
              color: _selectedIndex == 1 ? Color(0xFF7747FD) : Colors.black,
            ),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/bottomnav_assets/cloud_icon.png',
              width: 40,
              height: 40,
              color: _selectedIndex == 2 ? Color(0xFF7747FD) : Colors.black,
            ),
            label: 'Cloud',
          ),
        ],
      ),
    );
  }
}
