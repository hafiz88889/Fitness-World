import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_text_style.dart';

class SelectTimeSlat extends StatefulWidget {
  const SelectTimeSlat({super.key});

  @override
  State<SelectTimeSlat> createState() => _SelectTimeSlatState();
}

class _SelectTimeSlatState extends State<SelectTimeSlat> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColor.blackColor
      ),
      child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
    );
  }
}
