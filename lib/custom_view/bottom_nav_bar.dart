import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        selectedItemColor: primaryColor,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelStyle: const TextStyle(fontSize: 0.0),
        unselectedLabelStyle: const TextStyle(fontSize: 0.0),
        type: BottomNavigationBarType.fixed,
        iconSize: 28.0,
        elevation: 4.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.business_center), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ''),
        ],
      ),
    );
  }
}
