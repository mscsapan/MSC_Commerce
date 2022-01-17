import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenScreen extends StatelessWidget {
  const MenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return const Scaffold(
      body: Center(child: Text('MenScreen Screen')),
    );
  }
}
