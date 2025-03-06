import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

Widget buildMessageItem(String message, {
  required bool isSent,
  required String time,
  required int index,
  required int totalMessages,}) {
  BorderRadiusGeometry borderRadius;
  if (index == 0 && isSent == true) {
    borderRadius = BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    );
  } else if (index == totalMessages - 1) {
    borderRadius = BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
      topRight: Radius.circular(20),
    );
  } else if (index == 0 && isSent == false) {
    borderRadius = BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    );
  } else {
    borderRadius = BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    );
  }
  return Align(
    alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSent ? MyColor.blackColor : MyColor.grayColor.withAlpha(150),
            borderRadius: borderRadius,
          ),
          child: Text(message, style: regularTextStyle24.copyWith(fontSize: 16,
              color: isSent ? MyColor.whiteColor : MyColor.blackColor),),
        )
      ],
    ),
  );
}

