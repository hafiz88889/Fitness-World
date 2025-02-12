import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VirtualAiWidget extends StatelessWidget {
  const VirtualAiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(image: AssetImage(MyImage.robotBanner),fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.grayColor.withAlpha(120)
                ),
                child: Text("GPT-5",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
              ),
              const SizedBox(width: 7,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.grayColor.withAlpha(120)
                ),
                child: Text("2M LLMs",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1,879+",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),),
                  Text("AI Conversation ",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,),),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 4,
                        color: MyColor.whiteColor.withAlpha(100)
                    )
                  ],
                ),
                child: Image(image: AssetImage(MyImage.messageIcon),height: 25,width: 25,color: MyColor.splashBacColor,)
              ),
            ],
          )
        ],
      ),
    );
  }
}
