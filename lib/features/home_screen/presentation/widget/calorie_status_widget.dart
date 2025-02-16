import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CalorieStatusWidget extends StatelessWidget {
  final String title1;
  final Color color;
  final String image;
  final double height;

  const CalorieStatusWidget(
      {super.key,
      required this.title1,
      required this.color,
      required this.image,
      required this.height
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColor.borderColor),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: height,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  image,
                  height: 30,
                  width: 30,
                  colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                ),
                Text(
                  title1,
                  style: regularTextStyle24.copyWith(
                      color: MyColor.whiteColor, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
