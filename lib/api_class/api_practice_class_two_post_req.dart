import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPracticeClassTwoPostReq extends StatefulWidget {
  const ApiPracticeClassTwoPostReq({super.key});

  @override
  State<ApiPracticeClassTwoPostReq> createState() => _ApiPracticeClassTwoPostReqState();
}

class _ApiPracticeClassTwoPostReqState extends State<ApiPracticeClassTwoPostReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              _createPost();
            }, child: Text("Create Post")),
          )
        ],
      ),
    );
  }

  void _createPost()async{
    String id="1";
    String title="foo";
    String body="bar";
    String userId="1";

    Map<String ,dynamic> postData={
      "title":title,
      "body":body,
      "userId":userId,
      "id":id,
    };
    Uri url=Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
   final apiResponse= await http.patch(url,body: jsonEncode(postData));

   print("Apni Respose:${apiResponse.body}");
  }
}
