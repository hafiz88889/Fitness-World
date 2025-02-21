import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class WeightLiftingCompletePageSlider extends StatelessWidget {
  final String title1;
  final String title2;
  final Color color;
  final double height;

  const WeightLiftingCompletePageSlider(
      {super.key,
        required this.title1,
        required this.color,
        required this.height,
        required this.title2,
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 250,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: MyColor.splashBacColor.withAlpha(50)
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: height,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),topLeft: Radius.circular(25),topRight: Radius.circular(25)),
              color: color
            ),
            child: Column(
              children: [
                Text(title2,style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                Text(title1,style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
              ],
            ),
          ),
        )
      ],
    );
  }
}
