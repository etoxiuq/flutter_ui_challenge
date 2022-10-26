import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const RoundedTextField(
      {Key? key,
      this.hintText,
      this.icon,
      this.onChanged,
      this.color = Colors.white,
      this.backgroundColor = Colors.blueAccent,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: color,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: color),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
