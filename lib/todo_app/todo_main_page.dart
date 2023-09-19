import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_data.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_model.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/Incompleted.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/all_tasks.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/widget.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/completed_task.dart';

class ToDoMainPage extends StatefulWidget {

  


  @override
  State<ToDoMainPage> createState() => _ToDoMainPageState();
}

class _ToDoMainPageState extends State<ToDoMainPage> {

   updateUi() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          bottom: const TabBar(tabs: 
        
        [
          Text("all "),
                 Text("Done"),
          Text("InCompleted "),
     
        ]
        ),
        ),
        body: 
TabBarView(children: 
[
  AllTasksScreen (updateUi),

CompeleteTasksScreen(updateUi),
InCompeleteTasksScreen(updateUi),
]
),
      
      ),
      
    );
  }
}



//ListView.builder(
   //     itemCount: tasks.where((element) => !(element.isCompleted)).length,
     //   itemBuilder: ( context,index ){
   
      //   return TaskWidget( tasks.where((element) =>  !(element.isCompleted)).toList()[index]);
      //  }, 
      //),