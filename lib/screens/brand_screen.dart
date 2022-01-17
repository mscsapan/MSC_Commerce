import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Brand'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            TextField(
              enabled: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.white70,
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
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
                      onPressed: () {},
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
