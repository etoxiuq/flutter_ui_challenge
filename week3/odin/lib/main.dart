import 'package:flutter/material.dart';
import 'package:study_ui_challenge/week3_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Week1Main().week1();
    // return Week2Main().week2();
    return Week3Main().week3();
  }
}
