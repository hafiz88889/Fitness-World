import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopRowWidget extends StatelessWidget {
  final String title;
  final String image;
  const TopRowWidget({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColor.borderColor),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            height: 15,
            width: 15,
            colorFilter: ColorFilter.mode(
                MyColor.grayColor, BlendMode.srcIn),
          ),
          const SizedBox(width: 10,),
          Text(title,style: regularTextStyle24,)
        ],
      ),
    );
  }
}
