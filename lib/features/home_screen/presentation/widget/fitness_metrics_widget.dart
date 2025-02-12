import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FitnessMetricsWidget extends StatelessWidget {
  final String title1;
  final String image;
  final String image2;
  final String title2;
  final Color color;
  const FitnessMetricsWidget({super.key,
  required this.title1,
  required this.image,
  required this.image2,
  required this.title2,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 10),
      height: 180,
      width: 150,
      padding: const EdgeInsets.all(15),
      decoration:
      BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title1,style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
              SvgPicture.asset(image,height: 25,width: 25,)
            ],
          ),
          Image(image: AssetImage(image2),color: MyColor.whiteColor,height: 80,width: 100,),
          Text(title2,style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 20),),

        ],
      ),
    );
  }
}
