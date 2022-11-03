import 'dart:developer';

import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {Key? key}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    double progress = task.totalTaskCount > 0
        ? (task.finishedTaskCount / task.totalTaskCount)
        : 0;
    log("${task.category} $progress");

    return SizedBox(
        width: 250,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: Colors.white,
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        task.icon,
                        color: task.color,
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  Spacer(),
                  Text(
                    '${task.totalTaskCount} Tasks',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    task.category,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  LinearProgressIndicator(
                    color: Colors.blue,
                    backgroundColor: Colors.blue.shade100,
                    value: progress,
                  )
                ],
              )),
        ));
  }
}

class Task {
  String category = "";
  IconData? icon;
  int totalTaskCount = 0;
  int finishedTaskCount = 0;
  Color color;

  Task(this.category, this.icon, this.totalTaskCount, this.finishedTaskCount,
      this.color);
}

var taskList = [
  Task("Personal", Icons.account_circle, 9, 7, Colors.redAccent),
  Task("Pet", Icons.food_bank, 10, 5, Colors.blueGrey),
  Task("Work", Icons.work, 4, 1, Colors.yellow),
  Task("Exercise", Icons.directions_walk, 6, 6, Colors.green),
  Task("Others", Icons.dock, 3, 0, Colors.deepPurpleAccent),
];
