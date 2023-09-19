import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_data.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_model.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/widget.dart';


class InCompeleteTasksScreen extends StatelessWidget {
  Function fun;
  InCompeleteTasksScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks
            .where((element) => (element.isCompleted?? false) == false)
            .length,
        itemBuilder: (c, i) {
          Task task = tasks
              .where((element) => (element.isCompleted ?? false ) == false)
              .toList()[i];
          return TaskWidget(task, fun);
        });
  }
}