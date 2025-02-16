import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HeartRateWidget extends StatelessWidget {
  const HeartRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(right: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColor.splashBacColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(MyImage.watchImage)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Apple Watch 6",style: regularTextStyle24.copyWith(fontSize: 20,color: MyColor.whiteColor),),
              const SizedBox(height: 15,),
              LinearPercentIndicator(
                animation: true,
                alignment: MainAxisAlignment.center,
                barRadius: const Radius.circular(20),
                padding: const EdgeInsets.all(1),
                width:150,
                lineHeight: 12.0,
                percent: 0.7,
                backgroundColor: MyColor.whiteColor.withAlpha(150),
                progressColor: MyColor.whiteColor,
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.energy_savings_leaf_outlined,color: MyColor.whiteColor,size: 20,),
                  const SizedBox(width: 5,),
                  Text("98%",style: regularTextStyle18.copyWith(fontSize: 12,color: MyColor.whiteColor),),
                  const SizedBox(width: 30,),
                  Icon(Icons.check_box,color: MyColor.whiteColor,size: 20,),
                  const SizedBox(width: 5,),
                  Text("Synce",style: regularTextStyle18.copyWith(fontSize: 12,color: MyColor.whiteColor),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
