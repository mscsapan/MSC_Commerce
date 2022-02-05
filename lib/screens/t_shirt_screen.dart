import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import 'package:msc_commerce/screens/nav_screen/favourite_nav_screen.dart';

class TShirtScreen extends StatefulWidget {
  const TShirtScreen({Key? key}) : super(key: key);

  @override
  State<TShirtScreen> createState() => _TShirtScreenState();
}

class _TShirtScreenState extends State<TShirtScreen>
    with SingleTickerProviderStateMixin {
  final List<String> items = ['Select Size', 'XS', 'X', 'XX', 'XL', 'L' 'M'];

  final List<String> colors = [
    'Select Color',
    'Black',
    'Red',
    'Orange',
    'White',
    'Blue Grey'
  ];
  AnimationController? animationController;
  Animation? animation;
  bool isFavourite = false;
  String? itemValue;
  String? colorValue;
  final String title = 'MARCELO BOURBON COUNTY OF MILAN';
  final String description =
      'Sometimes life feels like a carnival, lots of ups and downs and 360 spins, maybe a few bumps along the way. With this in mind, Marcelo Burlon County of Milan presents this black cotton bumper car print T-shirt. Enjoy the ride! Featuring a ribbed crew neck, short sleeves, a graphic print and a straight fit.';

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    animation = ColorTween(begin: blackColor, end: Colors.red)
        .animate(animationController!);
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() => isFavourite = true);
      }
      if (status == AnimationStatus.dismissed) {
        setState(() => isFavourite = false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-Shirt'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 400.0,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/tshirt1.png', fit: BoxFit.cover),
                Positioned(
                  bottom: 10.0,
                  left: MediaQuery.of(context).size.width / 4.0,
                  child: Container(
                    height: 20.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 11.0,
                  left: MediaQuery.of(context).size.width / 4.0,
                  child: Container(
                    height: 18.0,
                    width: 120.0,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    isDense: true,
                    hint: Text(items[0]),
                    value: itemValue,
                    onChanged: (value) => setState(() => itemValue = value),
                    items: items
                        .map<DropdownMenuItem<String>>(
                          (itemValue) => DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(itemValue),
                            ),
                            value: itemValue,
                          ),
                        )
                        .toList(),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    isDense: true,
                    value: colorValue,
                    hint: Text(colors[0]),
                    onChanged: (value) => setState(() => colorValue = value),
                    items: colors
                        .map<DropdownMenuItem<String>>(
                          (itemValue) => DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(itemValue),
                            ),
                            value: itemValue,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: blackColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Text(
                  '\$240.0',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.69,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)))),
                    onPressed: () => debugPrint('AddToBag Presses'),
                    child: Text(
                      'Add To Bag'.toUpperCase(),
                      style: const TextStyle(fontSize: 20.0, color: greyColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)))),
                    onPressed: () {
                      isFavourite
                          ? animationController!.reverse()
                          : animationController!.forward();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(milliseconds: 1200),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                              label: 'Go To Favorite',
                              onPressed: () => goToNextScreen(
                                  context, const FavoriteScreen())),
                          margin: const EdgeInsets.only(
                              bottom: 12.0, left: 10.0, right: 10.0),
                          content: Text(!isFavourite
                              ? 'Added To Favorite'
                              : 'Remove from Favorite'),
                        ),
                      );
                    },
                    child: AnimatedBuilder(
                        animation: animationController!,
                        builder: (context, _) {
                          return Icon(
                            isFavourite
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            //Icons.favorite,
                            //color: isFavourite ? Colors.red : blackColor,
                            color: animation!.value,
                            size: 28.0,
                          );
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
