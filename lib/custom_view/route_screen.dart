import 'package:flutter/material.dart';

goToNextScreen(BuildContext context, Widget screen) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => screen));
}
