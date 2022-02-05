import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import 'package:msc_commerce/screens/payment_method.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  static final List<String> logos = [
    'assets/fedex.png',
    'assets/usps.png',
    'assets/dhl.png',
  ];

  TextStyle headingStyle() {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'shipping address'.toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 14.0),
              color: Colors.grey.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Carla Wills',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 1.4,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Text('1620, Hill Heaven Drive'),
                    const SizedBox(height: 5.0),
                    const Text('Waco, Tx 7107, United State'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'payment'.toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 14.0),
              color: Colors.grey.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40.0,
                          width: 50.0,
                          child: Image.asset(
                            'assets/master_card.png',
                            height: 40.0,
                            width: 50.0,
                          ),
                        ),
                        Row(
                          children: List.generate(
                            15,
                            (index) => Text(
                              index % 5 != 0 ? '*' : ' ',
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Text(
                          '7649',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'delivery method'.toUpperCase(),
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                logos.length,
                (index) => Container(
                  height: 90.0,
                  width: 115.0,
                  color: Colors.grey.withOpacity(0.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Image.asset(logos[index]),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text('2-3 Days'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 160.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 15.0),
              //color: Colors.grey.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order', style: headingStyle()),
                        Text('\$410.0', style: headingStyle()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery', style: headingStyle()),
                        Text('\$50.0', style: headingStyle()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Summary', style: headingStyle()),
                            const SizedBox(width: 20.0),
                            Row(
                              children: List.generate(
                                20,
                                (index) => Text(
                                  '-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.withOpacity(0.6),
                                      fontSize: 18.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('\$460.0',
                            style: headingStyle().copyWith(fontSize: 18.0)),
                      ],
                    ),
                  ],
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
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
                onPressed: () => goToNextScreen(context, const PaymentMethod()),
                child: const Text('SUBMIT ORDER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white70,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
