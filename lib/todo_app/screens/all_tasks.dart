import 'package:flutter/material.dart';

import 'package:flutter_application_1_godigital/todo_app/data/tasks_data.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_model.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
AllTasksScreen(this.fun);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: tasks.length,
      itemBuilder: ( context,index ){
   Task task = tasks[index];
       return TaskWidget(task, fun);
        }, 
     );
  }
}