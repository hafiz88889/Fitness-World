import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AiSuggesionWidget extends StatelessWidget {
  const AiSuggesionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(MyImage.plateImage),fit: BoxFit.cover)
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
                child: Row(
                  children: [
                    SvgPicture.asset(MyImage.fireIcon),
                    Text("Habbit",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                  ],
                ),
              ),
              const SizedBox(width: 7,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.grayColor.withAlpha(120)
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(MyImage.resturentIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 15,width: 15,),
                    const SizedBox(width: 5,),
                    Text("Diet",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text("Increase Calorie",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 30),),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.homeScreenTwelve);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.splashBacColor,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 4,
                        color: MyColor.splashBacColor.withAlpha(100),
                      )
                    ]
                  ),
                  child: SvgPicture.asset(MyImage.arrowRight),
                ),
              )

            ],
          ),
          Text("Gain muscle with extra calorie",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),

        ],
      ),
    );
  }
}
