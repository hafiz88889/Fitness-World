import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class FatForteenRowWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final Color color;
  const FatForteenRowWidget({super.key,required this.title1,required this.title2,required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.stop,color: color,),
        const SizedBox(width: 5,),
        Text(title1,style: regularTextStyle18,),
        const Spacer(),
        Text(title2,style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
      ],
    );
  }
}
