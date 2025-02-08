import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordWidget extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  final String title1;
  const ResetPasswordWidget({super.key,
  required this.color,
  required this.image,
  required this.title,
  required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: MyColor.grayColor.withAlpha(25)
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:color
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
            ),
          ),
          const SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: regularTextStyle24.copyWith(fontSize: 18,),),
              Text(title1,style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
            ],
          ),
          const Spacer(),
          Transform.rotate(angle: -3.15,
            child: SvgPicture.asset(MyImage.backIcon),
          ),
        ],
      ),
    );
  }
}
