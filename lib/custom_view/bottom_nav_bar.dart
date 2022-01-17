import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int index) onTap;
  final int currentIndex;

  const BottomNavBar(
      {Key? key, required this.onTap, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: primaryColor,
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedLabelStyle: const TextStyle(fontSize: 0.0),
      unselectedLabelStyle: const TextStyle(fontSize: 0.0),
      type: BottomNavigationBarType.fixed,
      iconSize: 28.0,
      elevation: 8.0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_sharp), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.business_center), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ''),
      ],
    );
  }
}
