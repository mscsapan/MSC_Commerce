import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  final String authType;
  final String image1;
  final String image2;

  const SocialLogin(
      {Key? key,
      required this.authType,
      required this.image1,
      required this.image2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text('Or $authType with social account',
              style: const TextStyle(fontSize: 16.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60.0,
                width: 80.0,
                margin: const EdgeInsets.only(top: 10.0, right: 10.0),
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset('assets/social/$image1'),
                ),
              ),
              Container(
                height: 60.0,
                width: 80.0,
                margin: const EdgeInsets.only(top: 10.0),
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset('assets/social/$image2'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
