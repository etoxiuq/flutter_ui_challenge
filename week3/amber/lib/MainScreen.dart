import 'package:amber/Color.dart';
import 'package:amber/components/TodoAppBar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, this.body}) : super(key: key);
  final Widget? body;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var date = DateFormat("MMM dd, yyyy").format(new DateTime.now());
    return Scaffold(
      appBar: TodoAppBar(),
    );
  }
}
