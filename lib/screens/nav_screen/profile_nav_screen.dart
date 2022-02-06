import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String image =
      'https://images.unsplash.com/photo-1611558709798-e009c8fd7706?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=691&q=80';
  static List<String> title = [
    'My Ordered',
    'Shipping Address',
    'Payment Method',
    'Promo Code',
    'My Review',
    'Setting',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: []);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 25.0),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                  ),
                ),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Carla Willis',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 24.0),
                    ),
                    Text(
                      'carlawillis@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Column(
                  children: List.generate(
                      title.length,
                      (index) => ExpansionTile(
                            title: Text(title[index],
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              'Already have 2 orders',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontSize: 16.0, color: Colors.black26),
                            ),
                            children: const [Text('Hello Mohammad Sapan')],
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
