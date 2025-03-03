import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ReviewWidget extends StatelessWidget {
  final String rate;
  final double rattingMap;
  const ReviewWidget({super.key,required this.rate,required this.rattingMap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(rate,style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
        const SizedBox(width: 10,),
        Image(image: AssetImage(MyImage.star),color: MyColor.orangeColor,height: 20,),
        const SizedBox(width: 10,),
        Expanded(
          child: LinearPercentIndicator(
            animation: true,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(20),
            padding: const EdgeInsets.all(1),
            lineHeight: 8.0,
            percent: rattingMap,
            backgroundColor: MyColor.whiteColor.withAlpha(150),
            progressColor: MyColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
