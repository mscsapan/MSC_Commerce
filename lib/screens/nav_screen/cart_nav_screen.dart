import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import 'package:msc_commerce/screens/checkout_screen.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

  TextStyle simpleTextStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold, fontSize: 14.0);
  }

  TextStyle textStyle() {
    return TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.black87.withOpacity(0.7));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Bag',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 1.4,
                      ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Promo Code'),
                          ),
                        ),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: const Icon(Icons.arrow_forward,
                              color: Colors.white, size: 28.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180.0,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.grey,
                        )),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 175.0,
                                width: 150.0,
                                child: Image.asset(
                                  'assets/fav0${index + 1}.png',
                                  fit: BoxFit.cover,
                                  height: 175.0,
                                  width: 150.0,
                                )),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'JAQUEMOUS',
                                      style: simpleTextStyle(context),
                                    ),
                                    const SizedBox(width: 45.0),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: const Text(
                                                      'Remove From My Bag?'),
                                                  actions: [
                                                    ElevatedButton(
                                                        onPressed: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                        child: const Text(
                                                            'Cancel')),
                                                    ElevatedButton(
                                                        onPressed: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                        child:
                                                            const Text('OK')),
                                                  ],
                                                );
                                              });
                                        },
                                        icon: const Icon(Icons.more_vert))
                                  ],
                                ),
                                Text(
                                  'La Maring Long-Slave Shirt',
                                  style: simpleTextStyle(context),
                                ),
                                const SizedBox(height: 4.0),
                                Text('Color: Pink', style: textStyle()),
                                const SizedBox(height: 3.0),
                                Text('Size: L', style: textStyle()),
                                const SizedBox(height: 2.0),
                                Text('Quantity: 1', style: textStyle()),
                                const SizedBox(height: 2.0),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Price ', style: textStyle()),
                                      TextSpan(
                                        text: '\$454.0',
                                        style: textStyle().copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'TOTAL: ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '(Excluding Delivery)',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                  ),
                  trailing: const Text(
                    '\$ 2390.0',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        // shape: MaterialStateProperty.all(const StadiumBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor)),
                    onPressed: () =>
                        goToNextScreen(context, const CheckoutScreen()),
                    child: const Text('CHECKOUT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white70,
                        )),
                  ),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
