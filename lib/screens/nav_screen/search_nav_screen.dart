import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/screens/tab_screen/kids_tab_screen.dart';
import 'package:msc_commerce/screens/tab_screen/men_tab_screen.dart';
import 'package:msc_commerce/screens/tab_screen/women_tab_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Category'),
          bottom: const TabBar(
            labelColor: blackColor,
            indicatorColor: primaryColor,
            indicatorWeight: 4.0,
            labelStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0),
            tabs: [
              Tab(text: 'Woman'),
              Tab(text: 'Men'),
              Tab(text: 'Kids'),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: TabBarView(children: [
          WomenScreen(),
          const MenScreen(),
          const KidsScreen(),
        ]),
      ),
    );
  }
}
