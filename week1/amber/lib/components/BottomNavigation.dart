import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  BottomNav selected = BottomNav.HOME;

  void onPressed(BottomNav nav) {
    Fluttertoast.showToast(msg: "$nav");
    setState(() {
      selected = nav;
    });
  }

  List<Widget> getBottomNavItems() {
    List<Widget> items = [];
    for (var value in BottomNav.values) {
      items.add(BottomNavItem(
        nav: value,
        selected: selected == value,
        selectedIcon: value.selectedIcon,
        unselectedIcon: value.unselectedIcon,
        label: value.label,
        onPressed: onPressed,
      ));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getBottomNavItems()));
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem(
      {Key? key,
      required this.nav,
      required this.selected,
      required this.label,
      required this.selectedIcon,
      required this.unselectedIcon,
      this.onPressed})
      : super(key: key);

  final BottomNav nav;

  final bool selected;
  final String label;
  final ImageProvider selectedIcon;
  final ImageProvider unselectedIcon;
  final Function(BottomNav)? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed != null ? () => onPressed!(nav) : null,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: selected ? Colors.purple : Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(32))),
            child: Row(children: [
              ImageIcon(
                selected ? selectedIcon : unselectedIcon,
                color: selected ? Colors.white : Colors.purple,
              ),
              Visibility(
                  visible: selected,
                  child: Row(children: [
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      label,
                      style: TextStyle(
                          color: selected ? Colors.white : Colors.purple),
                    )
                  ]))
            ])));
  }
}

enum BottomNav {
  HOME(
      selectedIcon: AssetImage('resources/home_selected.png'),
      unselectedIcon: AssetImage('resources/home_unselected.png'),
      label: "Home"),
  GROUP(
      selectedIcon: AssetImage('resources/group_selected.png'),
      unselectedIcon: AssetImage('resources/group_unselected.png'),
      label: "Group"),
  BONE(
      selectedIcon: AssetImage('resources/bone_selected.png'),
      unselectedIcon: AssetImage('resources/bone_unselected.png'),
      label: "Bone"),
  ADD(
      selectedIcon: AssetImage('resources/add_selected.png'),
      unselectedIcon: AssetImage('resources/add_unselected.png'),
      label: "Add");

  const BottomNav(
      {required this.selectedIcon,
      required this.unselectedIcon,
      required this.label});

  final ImageProvider selectedIcon;
  final ImageProvider unselectedIcon;
  final String label;
}
