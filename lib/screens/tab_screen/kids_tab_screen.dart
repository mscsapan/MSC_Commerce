import 'package:flutter/material.dart';

class KidsScreen extends StatelessWidget {
  const KidsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);*/
    return const Scaffold(body: Center(child: Text('Kids Screen')));
  }
}
