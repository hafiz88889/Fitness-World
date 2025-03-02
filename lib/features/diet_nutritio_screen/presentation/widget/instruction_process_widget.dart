import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';

class InstructionProcessWidget extends StatelessWidget {
  final String title1;
  final String image;
  final Color imageColor;
  final String title2;
  final Color orangeColor;
  final Color whiteColor;
  final Color lineColor;
  const InstructionProcessWidget({super.key,
  required this.title1,
  required this.image,
    required this.imageColor,
  required this.title2,
  required this.orangeColor,
  required this.whiteColor,
  required this.lineColor,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: whiteColor,
                      spreadRadius: 5
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color:orangeColor
                ),
                child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),height: 4,)
            ),
            // Vertical line for steps except the last one
            Container(
                width: 4,
                height: 80,
                color: lineColor,
            ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: regularTextStyle24
                ),
                const SizedBox(height: 10),
                Text(
                  title2,
                  style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
