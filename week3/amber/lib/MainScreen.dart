import 'package:amber/Color.dart';
import 'package:amber/components/TaskList.dart';
import 'package:amber/components/TodoAppBar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'components/Task.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var date = DateFormat("MMM dd, yyyy").format(DateTime.now());
    return Scaffold(
      appBar: TodoAppBar(),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: primary,
          child: Column(
            children: [
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Icon(
                    Icons.account_circle,
                    color: onPrimary,
                    size: 48,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Hello, Jane.",
                    style: TextStyle(color: onPrimary, fontSize: 30),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Looks like feel good.\nYou have 3 tasks to do today.",
                    style: TextStyle(color: onPrimary),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "TODAY : $date",
                    style: TextStyle(color: onPrimary),
                  )
                ],
              )),
              SizedBox(
                height: 24,
              ),
              Expanded(
                  child: TaskList(
                onChanged: (Task task) =>
                    {Fluttertoast.showToast(msg: "Task ${task.category}")},
              )),
              SizedBox(
                height: 48,
              )
            ],
          )),
    );
  }
}
