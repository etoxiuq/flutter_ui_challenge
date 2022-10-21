import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  void onPressed(String name) {
    Fluttertoast.showToast(msg: "$name clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () => onPressed("Search"),
            icon: const Icon(Icons.search, color: Colors.white)),
        IconButton(
            onPressed: () => onPressed("List"),
            icon: const Icon(Icons.list, color: Colors.white))
      ],
    );
  }
}
