import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/bottom_nav_bar.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import '../screens/filter_screen.dart';

class WomenShoeScreen extends StatefulWidget {
  const WomenShoeScreen({Key? key}) : super(key: key);

  @override
  _WomenShoeScreenState createState() => _WomenShoeScreenState();
}

class _WomenShoeScreenState extends State<WomenShoeScreen> {
  List<String> headTitle = ['ANKLE BOOTS', 'LOAFERS', 'WIDE FIT SHOES'];
  List<String> items = [
    'POPULAR',
    'NEWEST',
    'PRICE: LOW TO HIGH',
    'PRICE: HIGH TO LOW',
  ];
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women\'s Shoes'),
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
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ['ANKLE BOOTS', 'LOAFERS', 'WIDE FIT SHOES']
                      .map(
                        (title) => Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            height: height * 0.04,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20.0)),
                            margin: const EdgeInsets.only(right: 4.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              child: Text(
                                title,
                                style: const TextStyle(color: blackColor),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            ListTile(
              title: DropdownButton<String>(
                underline: const SizedBox(),
                isDense: true,
                hint: const Text('RECOMMENDED'),
                onChanged: (value) {},
                items: items
                    .map<DropdownMenuItem<String>>(
                      (itemValue) => DropdownMenuItem(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(itemValue),
                        ),
                        value: itemValue,
                      ),
                    )
                    .toList(),
              ),
              trailing: TextButton(
                  onPressed: () =>
                      goToNextScreen(context, const FilterScreen()),
                  child: const Text(
                    'FILTER',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            GridViewTile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}

class GridViewTile extends StatelessWidget {
  GridViewTile({Key? key}) : super(key: key);
  final List<String> image = [
    'https://images.unsplash.com/photo-1552346154-21d32810aba3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1534653299134-96a171b61581?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=975&q=80',
    'https://images.unsplash.com/photo-1535043934128-cf0b28d52f95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1518049362265-d5b2a6467637?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1499013819532-e4ff41b00669?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdvbWVuJTIwc2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHdvbWVuJTIwc2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        physics: const BouncingScrollPhysics(),
        itemCount: image.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.26,
                width: MediaQuery.of(context).size.width / 2.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    image[position],
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width / 2.0,
                  ),
                ),
              ),
              PriceAndFavouriteTile(
                position: position,
              ),
              const Text(
                'Fendi',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              const Text(
                'Ultrafast Sneakers',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PriceAndFavouriteTile extends StatefulWidget {
  final int position;
  const PriceAndFavouriteTile({Key? key, required this.position})
      : super(key: key);

  @override
  _PriceAndFavouriteTileState createState() => _PriceAndFavouriteTileState();
}

class _PriceAndFavouriteTileState extends State<PriceAndFavouriteTile> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(left: 0.0),
        leading: Text(
          '\$${widget.position + 12 + 202}',
          style: const TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: blackColor),
        ),
        trailing: IconButton(
          splashRadius: 20.0,
          onPressed: () {
            setState(() {
              isFavourite = !isFavourite;
            });
          },
          icon: !isFavourite
              ? const Icon(Icons.favorite_border, color: primaryColor)
              : const Icon(Icons.favorite, color: redColor),
        ));
  }
}
