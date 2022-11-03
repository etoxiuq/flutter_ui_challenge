import 'dart:ffi';

import 'package:flutter/material.dart';

import 'Task.dart';

class TaskList extends StatelessWidget {
  TaskList({Key? key, this.onChanged}) : super(key: key);

  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.7);

  Function(Task)? onChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return TaskItem(taskList[index]);
      },
      itemCount: taskList.length,
      onPageChanged: (int index) => {
        if(onChanged != null) onChanged!(taskList[index])
      },
    );
  }
}
