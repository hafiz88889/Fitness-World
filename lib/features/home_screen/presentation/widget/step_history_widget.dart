import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepHistoryWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String image;
  final Color color;

  const StepHistoryWidget(
      {super.key, required this.title1, required this.title2, required this.title3, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: MyColor.borderColor
      ),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: color,
              ),
              child: Image(image: AssetImage(image),
                height: 25,
                width: 25,
                color: MyColor.whiteColor,)
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,
                style: regularTextStyle24.copyWith(fontSize: 16),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SvgPicture.asset(MyImage.fireIcon,
                    colorFilter: ColorFilter.mode(
                        MyColor.grayColor, BlendMode.srcIn),),
                  Text(title2, style: regularTextStyle18.copyWith(
                      fontSize: 14,),),
                  const SizedBox(width: 20,),
                  SvgPicture.asset(MyImage.fireIcon,
                    colorFilter: ColorFilter.mode(
                        MyColor.grayColor, BlendMode.srcIn),),
                  Text(title3, style: regularTextStyle18.copyWith(
                      fontSize: 14,),),
                ],
              ),
            ],
          ),
          const Spacer(),
          Transform.rotate(
              angle: 3,
              child: SvgPicture.asset(MyImage.backIcon))
        ],
      ),
    );
  }
}
