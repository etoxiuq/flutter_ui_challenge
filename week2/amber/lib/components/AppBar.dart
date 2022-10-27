import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
        color: Colors.indigoAccent,
        padding:
            EdgeInsets.only(top: statusBarHeight + 10, right: 16, left: 16, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.list),
              color: Colors.white,
            ),
            Text(
              "Institutes",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.sort),
                color: Colors.white)
          ],
        ));
  }
}
