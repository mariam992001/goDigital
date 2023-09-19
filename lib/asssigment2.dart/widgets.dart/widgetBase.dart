import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1_godigital/ass2/model/data.dart';
import 'package:flutter_application_1_godigital/asssigment2.dart/model.dart';

class WidgetCardProduct extends StatelessWidget {
  Categoryy categoryy;
   WidgetCardProduct(this.categoryy);

  @override
  Widget build(BuildContext context) {
    return Column(
      
        children: [
         ...categoryy.products?.map((e) {
                return Container(
            height: 250,
            //width: MediaQuery.of(context).size.width / 2 - 30, // Adjust the width as needed

              margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
             // height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                      
                    child: ClipRRect(
                        
                        borderRadius : BorderRadius.circular(10),
                        
              
                      child: Image.network(e.img!,fit: BoxFit.cover,width: double.infinity,))),
                  Row(
                    children: [
                      Text(e.name!),
                      const Spacer(),
                      Text(e.price.toString()),
                    ],
                  ),
                  Row(
                    children: [
    Flexible(
      child: Text(
        e.description!,
        overflow: TextOverflow.ellipsis,
      ),
    ),
                    ],
                  ),


                    
                    
                ],
              ),
            ),
            );
              }).toList() ??
              [],
          // Add more widgets if needed
        ],
      );
  }
}