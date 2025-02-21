import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class WorkoutsRowOne extends StatelessWidget {
  const WorkoutsRowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration:
      BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MyColor.borderColor
      ),
      child: Row(
        children: [
          Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage(MyImage.ladyProfile),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Zen Flow Yoga",style: regularTextStyle24,),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColor.grayColor.withAlpha(100),
                    ),
                    child: Text("Yoga",style: regularTextStyle18.copyWith(fontSize: 16),),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              LinearPercentIndicator(
                animation: true,
                alignment: MainAxisAlignment.center,
                barRadius: const Radius.circular(20),
                padding: const EdgeInsets.all(1),
                width: 200.0,
                lineHeight: 12.0,
                percent: 0.5,
                backgroundColor: MyColor.grayColor.withAlpha(150),
                progressColor: MyColor.blackColor,
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SvgPicture.asset(MyImage.copyIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                  const SizedBox(width: 5,),
                  Text("Movement 4",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                  const SizedBox(width: 20,),
                  SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                  const SizedBox(width: 5,),
                  Text("11%",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
