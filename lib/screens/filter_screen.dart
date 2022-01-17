import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import 'package:msc_commerce/screens/brand_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double initialValue = 0.0;
  final List<String> names = [
    'BRAND',
    'STYLE',
    'SIZE',
    'RANGE',
    'COLOR',
    'MATERIAL',
  ];

  Widget allNames(int index) {
    return Column(
      children: [
        ListTile(
          title: Text(
            names[index],
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Text('all'.toUpperCase()),
        ),
        const Divider(
          thickness: 1.5,
          color: Colors.grey,
          height: 10.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('price range'.toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 18.0)),
            const ListTile(
              title: Text(
                '\$100',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              trailing: Text('\$400',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            /* Slider(
                activeColor: primaryColor,
                value: initialValue,
                onChanged: (double value) {
                  setState(() {
                    initialValue = value;
                  });
                })*/
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 5.0,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                Positioned(
                    left: 70.0,
                    right: 70.0,
                    child: Container(
                      height: 5.0,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8.0)),
                    )),
                Positioned(
                  top: -10.0,
                  // bottom: 2.5,
                  left: 58,
                  child: Container(
                    height: 24.0,
                    width: 24.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                  ),
                ),
                Positioned(
                  top: -10.0,
                  // bottom: 2.5,
                  right: 58,
                  child: Container(
                    height: 24.0,
                    width: 24.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            const Divider(
              thickness: 1.5,
              color: Colors.grey,
              height: 10.0,
            ),
            Column(
                children:
                    List.generate(names.length, (index) => allNames(index))),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 30.0),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 45.0,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'CLEAR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            Colors.green[900]?.withOpacity(0.2)),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 45.0,
                    child: TextButton(
                      onPressed: () =>
                          goToNextScreen(context, const BrandScreen()),
                      child: const Text(
                        'APPLY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
