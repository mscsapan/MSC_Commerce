import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/model/favorite_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);
  static const List<String> item = [
    'SHOE',
    'COAT',
    'SWEATER',
    'TIE',
    'BELT',
    'JACKET'
  ];
  static const List<String> dropdownButtonsItems = [
    'HIGH',
    'LOW',
    'HIGH TO LOW',
    'LOW TO HIGH',
  ];

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  TextStyle simpleTextStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold, fontSize: 16.0);
  }

  String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Favourite')),
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          favouriteCategory(context),
          const SizedBox(height: 12.0),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text('PRICE', style: simpleTextStyle(context)),
                  const SizedBox(width: 10.0),
                  DropdownButton<String>(
                    underline: const SizedBox(),
                    value: initialValue,
                    hint: Text('Select Price', style: simpleTextStyle(context)),
                    items: FavoriteScreen.dropdownButtonsItems
                        .map<DropdownMenuItem<String>>(
                          (dropItem) => DropdownMenuItem(
                              child: Text(dropItem,
                                  style: simpleTextStyle(context)),
                              value: dropItem),
                        )
                        .toList(),
                    onChanged: (newItems) =>
                        setState(() => initialValue = newItems!),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () => debugPrint('Filter Button  Pressed..'),
                      child: Text('Filter', style: simpleTextStyle(context))),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(
              color: greyColor,
              thickness: 2.0,
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: getFavorite.length,
              padding: const EdgeInsets.only(bottom: 12.0),
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6.0,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                final Favorite fav = getFavorite[index];
                return Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  // color: Colors.red,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                              height: 200.0,
                              width: double.infinity,
                              child: Image.asset(
                                fav.image,
                                fit: BoxFit.fill,
                                height: 200.0,
                                width: double.infinity,
                              )),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.clear)),
                          ),
                          index == 3
                              ? Positioned(
                                  bottom: 60.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Container(
                                    height: 40.0,
                                    alignment: Alignment.center,
                                    color: greyColor.withOpacity(0.7),
                                    child: const Text(
                                      'SOLD OUT',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$${fav.price.toString()}',
                              style: simpleTextStyle(context),
                            ),
                            Text(
                              fav.brand,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey.withOpacity(0.9)),
                            ),
                            Text(fav.name, style: simpleTextStyle(context)),
                            const SizedBox(height: 4.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Size: ${fav.size.toString()}'),
                                Text('Color: ' + fav.color),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }

  SingleChildScrollView favouriteCategory(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          FavoriteScreen.item.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Container(
              height: 40.0,
              width: 120.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                FavoriteScreen.item[index],
                style: simpleTextStyle(context).copyWith(fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
