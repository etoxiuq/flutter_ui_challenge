import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigation> {
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: itemIndex,
      onItemSelected: (index) => setState(() {
        Fluttertoast.showToast(msg: '$index 클릭');
        itemIndex = index;
      }),
      items: [
        navigationItem(0, 'assets/week1/home_selected.png',
            'assets/week1/home_unselected.png', 'Home'),
        navigationItem(1, 'assets/week1/group_selected.png',
            'assets/week1/group_unselected.png', 'Group'),
        navigationItem(2, 'assets/week1/bone_selected.png',
            'assets/week1/bone_unselected.png', 'Bone'),
        navigationItem(3, 'assets/week1/add_selected.png',
            'assets/week1/add_unselected.png', 'Add')
      ],
    );
  }

  BottomNavyBarItem navigationItem(
      int index, String selectIcon, String unSelectIcon, String title) {
    return BottomNavyBarItem(
      icon: Image.asset(
          itemIndex == index ? selectIcon : unSelectIcon,
          width: 20, height: 20),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      activeColor: Colors.purple,
      textAlign: TextAlign.center,
    );
  }
}
