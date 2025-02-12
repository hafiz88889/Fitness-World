import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FitnessResourceWidget extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  final String title1;
  const FitnessResourceWidget({super.key,
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
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              image: DecorationImage(image: AssetImage(image))
            ),
          ),
          const SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: regularTextStyle24.copyWith(fontSize: 16,),),
              Text(title1,style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Icon(Icons.star,size: 20,color: MyColor.splashBacColor,),
                  const SizedBox(width: 5,),
                  Text("4.1",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor)),
                  const SizedBox(width: 20,),
                  Icon(Icons.visibility,size: 20,color: MyColor.splashBacColorTwo,),
                  const SizedBox(width: 5,),
                  Text("4.1",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor)),
                  const SizedBox(width: 20,),
                  Icon(Icons.heart_broken,size: 20,color: MyColor.grayColor,),
                  const SizedBox(width: 5,),
                  Text("4.1",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor))
                ],
              ),
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
