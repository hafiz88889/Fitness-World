import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllSuggestionWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  const AllSuggestionWidget({super.key,required this.image,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(right: 10),
        height: 200,
        width: 190,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColor.borderColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.whiteColor
              ),
              child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
            ),
            const Spacer(),
            Text(title1,style: regularTextStyle24,),
            Text(title2,style:regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),)
          ],
        )
    );
  }
}
