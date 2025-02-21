import 'dart:convert';

import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPractice extends StatefulWidget {
  const ApiPractice({super.key});

  @override
  State<ApiPractice> createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {

  @override
  void initState() {
    super.initState();
    getPostsData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Example",style: regularTextStyle24,),
        backgroundColor: MyColor.splashBacColor,
      ),
      body: ListView.builder(
         itemCount: postList.length,
          itemBuilder: (context, index) {
           final listSingleElement=postList[index];
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.splashBacColorTwo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${listSingleElement['id']}",style: regularTextStyle24.copyWith(color: MyColor.whiteColor)),
                  Text("User Id ${listSingleElement['userId']}",style: regularTextStyle24.copyWith(color: MyColor.whiteColor)),
                  Text("${listSingleElement['title']}",style: regularTextStyle24.copyWith(color: MyColor.whiteColor)),

                ],
              ),
            );
          },),
    );
  }

  dynamic postList=[];
  void getPostsData()async{
    Uri url=Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response=await http.get(url);
    setState(() {
      postList=jsonDecode(response.body);
    });


  }
}
