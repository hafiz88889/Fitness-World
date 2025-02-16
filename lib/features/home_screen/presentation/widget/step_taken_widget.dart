import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepTakenWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final Color color;

  const StepTakenWidget(
      {super.key,
      required this.image,
      required this.title1,
      required this.title2,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:color,
          ),
          child: SvgPicture.asset(image),
        ),
        Text(
          title1,
          style: regularTextStyle24.copyWith(fontSize: 30),
        ),
        Text(
          title2,
          style: regularTextStyle18.copyWith(
              fontSize: 16, color: MyColor.grayColor),
        )
      ],
    );
  }
}
