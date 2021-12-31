import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  const InputTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        maxLines: 2,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.black.withOpacity(0.15),
          hintText: hintText,
          hintStyle: const TextStyle(color: blackColor, letterSpacing: 1.2),
          enabled: false,
        ),
      ),
    );
  }
}
