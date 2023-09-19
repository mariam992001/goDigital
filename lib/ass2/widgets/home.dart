import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/ass2/model/data.dart';
import 'package:flutter_application_1_godigital/ass2/widgets/productList.dart';

class HomePage extends StatelessWidget {
  final List<Categoryy> categories =
      modelStore.map((e) => Categoryy(e)).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('متجر'),
        ),
        body: Column(
          children: [
            Image.network("https://img.freepik.com/free-vector/flat-shopping-center-social-media-cover-template_23-2149320512.jpg?w=2000", fit: BoxFit.cover,height: 120,width: double.infinity,), // Add your image here
            TabBar(
              labelStyle: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold, 
               
              ),
               labelColor: Colors.orange,
              tabs: categories.map((category) {
                return Tab(
                  text: category.name!,
                );
              }).toList(),
            ),
            Expanded(
              child: TabBarView(
                children: categories.map((category) {
                  return ProductList(category.products!);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
