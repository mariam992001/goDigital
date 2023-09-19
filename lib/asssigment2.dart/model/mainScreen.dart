import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/ass2/model/data.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/model.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/widgets.dart/categories_widget.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/widgets.dart/widgetBase.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

List<Categoryy> CategoryConverter() {
  return modelStore.map((e) => Categoryy(e)).toList();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
             
              Tab(text: "dresses"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
           GridView.builder(
            
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20,mainAxisSpacing: 80),
         
            itemBuilder: (context, index){
              
            return CtegoriesWidget();
           })
             
          ],
        ),
      ),
    );
  }
}
