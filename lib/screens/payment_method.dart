import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(title: const Text('Your Payment Method')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Cards',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 180.0,
              width: double.infinity,
              color: Colors.black.withOpacity(0.8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35.0,
                      width: 35.0,
                      child: Image.asset('assets/chip.png', fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            15,
                            (index) => Text(
                              index % 5 != 0 ? '*' : ' ',
                              style: const TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white70,
                                  letterSpacing: 2.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Text(
                          '6789',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'CARLA WILLIS',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Expire Date',
                                style: TextStyle(color: Colors.white70)),
                            SizedBox(height: 5.0),
                            Text(
                              '2/2050',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                          width: 50.0,
                          child: Image.asset(
                            'assets/master_card.png',
                            height: 40.0,
                            width: 50.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
