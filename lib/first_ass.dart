import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/model.dart';

class FirstAssignment extends StatelessWidget {
  dataModel? data;
  final List<String> imageUrls = [
    'https://miro.medium.com/v2/resize:fit:1100/format:webp/1*sPQ1zOvTO7-DN2t25xMRsA.jpeg',
    'https://plus.unsplash.com/premium_photo-1690749741490-27dd0d8db22c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
    'https://images.unsplash.com/photo-1526818655834-d62a36fda59f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
    'https://miro.medium.com/v2/resize:fit:1100/format:webp/1*sPQ1zOvTO7-DN2t25xMRsA.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: Container(
                      child: Image.network(
                        "https://images.unsplash.com/photo-1600256698796-ecef3f5b1b57?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nusa Pendia",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "Nusa Penida, and neighbouring Lembongan and Ceningan islands, are a bird sanctuary.[3] The islands communities have used traditional Balinese village regulations to create the sanctuary. The idea of a sanctuary came from the Friends of the National Parks Foundation (FNPF).[4]"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Picture",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      
                      children: List.generate(
                        4,
                        (index) => Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            margin: EdgeInsets.all(8.0),
                            child: Image.network(
                              imageUrls[index],
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: Text("More in Bali", style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
