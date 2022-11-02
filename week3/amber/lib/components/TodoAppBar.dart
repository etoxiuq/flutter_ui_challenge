import 'package:amber/Color.dart';
import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TodoAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primary,
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: onPrimary,
              ),
              iconSize: 24,
              onPressed: () {},
            ),
            Text(
              "TODO",
              style: TextStyle(color: onPrimary, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: onPrimary,
              ),
              iconSize: 24,
              onPressed: () {},
            )
          ],
        )));
  }
}
