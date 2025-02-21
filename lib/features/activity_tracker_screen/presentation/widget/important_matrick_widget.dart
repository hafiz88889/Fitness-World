import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ImportantMatrickWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Color color2;
  final double parcent;

  const ImportantMatrickWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.parcent,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: color2,
      child: Row(
        children: [
          Text(
            title,
            style: regularTextStyle18.copyWith(
                color: MyColor.blackColor.withAlpha(180)),
          ),
          const Spacer(),
          LinearPercentIndicator(
            animation: true,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(20),
            padding: const EdgeInsets.all(1),
            width: 150.0,
            lineHeight: 12.0,
            percent: parcent,
            backgroundColor: MyColor.grayColor.withAlpha(150),
            progressColor: color,
          ),
        ],
      ),
    );
  }
}
