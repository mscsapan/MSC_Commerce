import 'package:flutter/material.dart';
import 'package:msc_commerce/custom_view/route_screen.dart';
import 'package:msc_commerce/screens/women_shoe_screen.dart';

class WomenScreen extends StatelessWidget {
  WomenScreen({Key? key}) : super(key: key);
  final List<String> title = ['NEW IN', 'CLOTHING', 'SHOES', 'ACCESSORIES'];

  @override
  Widget build(BuildContext context) {
    /* SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);*/
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 6.0),
        child: ListView.builder(
          itemCount: title.length + 1,
          itemBuilder: (context, position) {
            return SizedBox(
              height: height * 0.18,
              width: double.infinity,
              child: position == 0
                  ? Container(
                      //height: height * 0.15,
                      color: const Color(0xFF2D9CDB),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'MID-SEASON SALE',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2),
                          ),
                          Text(
                            'up to 50% OFF',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white60,
                                letterSpacing: 0.6),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
                      onTap: () =>
                          goToNextScreen(context, const WomenShoeScreen()),
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(title[position - 1],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  )),
                            ),
                            SizedBox(
                              height: height * 0.18,
                              width: width / 2.0,
                              child: Image.asset(
                                'assets/category/${position + 4}.png',
                                fit: BoxFit.fitHeight,
                                height: height * 0.18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
