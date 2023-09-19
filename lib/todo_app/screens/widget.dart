import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_model.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function fun;
  TaskWidget(this.task, this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: (task.isCompleted ?? false) ? Colors.blue : Colors.red,
      margin: EdgeInsets.all(5),
      child: CheckboxListTile(
          title: Text(task.name ?? ""),
          value: task.isCompleted ?? false,
          onChanged: (v) {
            task.isCompleted = !(task.isCompleted ?? false);

            fun();
          }),
    );
  }
}