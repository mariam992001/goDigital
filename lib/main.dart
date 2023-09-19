import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/ass2/widgets/home.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/model/mainScreen.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/widgets.dart/categories_widget.dart';
import 'package:flutter_application_1_godigital/data.dart';
import 'package:flutter_application_1_godigital/drawer.dart';
import 'package:flutter_application_1_godigital/instagr.dart/meal_screen.dart';
import 'package:flutter_application_1_godigital/resturant/screen.dart';
import 'package:flutter_application_1_godigital/todo_app/data/tasks_data.dart';
import 'package:flutter_application_1_godigital/todo_app/screens/widget.dart';
import 'package:flutter_application_1_godigital/todo_app/todo_main_page.dart';

import 'first_ass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     debugShowCheckedModeBanner: false,
    
      home: HomePage(),
      
    );
  }
}
