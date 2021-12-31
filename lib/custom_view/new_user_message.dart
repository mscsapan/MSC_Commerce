import 'package:flutter/material.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';

class NewUserMessage extends StatelessWidget {
  final String message;
  final Function()? onTap;
  const NewUserMessage({Key? key, required this.message, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          message,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.arrow_right_alt,
              color: primaryColor, size: 28.0),
          onPressed: onTap,
        ),
      ],
    );
  }
}
