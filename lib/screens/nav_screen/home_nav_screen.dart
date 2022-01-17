import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> title = ['OUR LEGACY', 'NEW-SEASON LAYERS'];

  final List<String> subTitle = ['Find your shoe', 'The warm up'];
  final String under = 'Which\nunderwear is\nright for you';
  final List<double> price = [547.00, 190.00];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: greyColor));
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: height * 0.5,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/product/1.png', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Givenchy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34.0,
                              color: Colors.white),
                        ),
                        const Text(
                          'The Latest Drop',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.3, vertical: 15),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            child: const Text('SHOP  NOW'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.4,
              //color: Colors.deepOrange,
              margin: const EdgeInsets.only(top: 12.0),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) => Container(
                  width: width / 2.0,
                  //color: Colors.deepOrange,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.3,
                        child: Image.asset(
                            'assets/product/cat${position + 1}.png',
                            fit: BoxFit.fill,
                            width: width / 2.0),
                      ),
                      const SizedBox(height: 4.0),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[position],
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            Text(
                              subTitle[position],
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.4,
              //color: Colors.deepOrange,
              margin: const EdgeInsets.only(top: 12.0),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) => Container(
                  width: width / 2.0,
                  //color: Colors.deepOrange,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.3,
                        child: Image.asset(
                            'assets/product/cat${position + 1}.png',
                            fit: BoxFit.fill,
                            width: width / 2.0),
                      ),
                      const SizedBox(height: 4.0),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[position],
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            Text(
                              subTitle[position],
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.42,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/product/11.png', fit: BoxFit.fill),
                  Padding(
                    padding: const EdgeInsets.all(12.0).copyWith(bottom: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Midseasone sale',
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2)),
                        Text(
                          '50% OFF',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Winter is coming'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 4.0),
                const Text('Promo Code: MS143S',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ))
              ],
            ),
            Container(
              //color: Colors.deepOrange,
              height: height * 0.15,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, position) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: width / 3.4,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset('assets/category/1.png', fit: BoxFit.fill),
                      Positioned(
                        bottom: 5.0,
                        left: 2.0,
                        child: Text(
                          under,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'NEW IN',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: height * 0.4,
              //color: Colors.deepOrange,
              margin: const EdgeInsets.only(top: 12.0),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) => Container(
                  width: width / 2.0,
                  //color: Colors.deepOrange,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.3,
                        child: Image.asset(
                            'assets/category/${position + 3}.png',
                            fit: BoxFit.fill,
                            width: width / 2.0),
                      ),
                      const SizedBox(height: 4.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${price[position].toString()}',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            const Icon(Icons.favorite_border,
                                color: primaryColor)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
