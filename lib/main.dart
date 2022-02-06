import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/screens/nav_screen/profile_nav_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const ProfileScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: greyColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle: TextStyle(
            color: blackColor,
            fontSize: 20.0,
            letterSpacing: 1.0,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
