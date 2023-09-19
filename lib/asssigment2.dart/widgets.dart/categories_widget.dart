import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/model.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/model/mainScreen.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/widgets.dart/widgetBase.dart';

class CtegoriesWidget extends StatelessWidget {
 // Categoryy categoryy;

  
  CtegoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children:
      
       CategoryConverter()
          .map((e) => WidgetCardProduct(e))
          .toList(),
    );
  }
}
