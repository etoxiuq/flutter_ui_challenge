import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search, color: Colors.white)),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.list, color: Colors.white))
      ],
    );
  }
}
