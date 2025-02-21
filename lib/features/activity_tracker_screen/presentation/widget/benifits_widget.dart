import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BenifitWidget extends StatelessWidget {
  final String image;
  final String title1;
  const BenifitWidget({super.key,required this.image,required this.title1,});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(right: 10,bottom: 10),
        height: 125,
        width: 180,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColor.borderColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(image,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),height: 30,width: 30,),
            const SizedBox(height: 10,),
            Text(title1,style: regularTextStyle24,),
          ],
        )
    );
  }
}
