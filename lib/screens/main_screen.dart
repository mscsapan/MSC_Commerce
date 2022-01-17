import 'package:flutter/material.dart';
import 'package:msc_commerce/custom_view/bottom_nav_bar.dart';

import 'nav_screen/cart_nav_screen.dart';
import 'nav_screen/favourite_nav_screen.dart';
import 'nav_screen/home_nav_screen.dart';
import 'nav_screen/profile_nav_screen.dart';
import 'nav_screen/search_nav_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
