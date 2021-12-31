import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
