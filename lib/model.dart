class dataModel {

String? image;
String? name;
String? description ;

dataModel(Map map)
{
name= map['name'];
image= map['image'];
description= map['description'];


}


}