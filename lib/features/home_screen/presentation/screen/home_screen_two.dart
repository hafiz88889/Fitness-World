import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: SvgPicture.asset(MyImage.backIcon),
                ),
              ),
              Text(
                "Sandow Score",
                style: regularTextStyle24.copyWith(fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: SvgPicture.asset(MyImage.settingIcn),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Image(image: AssetImage(MyImage.sandowScore),fit: BoxFit.cover,width: double.infinity,),
          const SizedBox(height: 40,),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.homeScreenThree);
              },
              child: Text("88",style: regularTextStyle24.copyWith(fontSize: 100),)),
          Text("Your are a healthy Individual",style: regularTextStyle18.copyWith(fontSize: 20,color: MyColor.grayColor),),
          const SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Container(
             padding: const EdgeInsets.all(7),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5),
               color: MyColor.splashBacColor
             ),
           ),
              const SizedBox(width: 10,),
              Text("STRENGTH",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
              const SizedBox(width: 30,),
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.blackColor
                ),
              ),
              const SizedBox(width: 10,),
              Text("AGILITY",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
              const SizedBox(width: 30,),
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.splashBacColorTwo
                ),
              ),
              const SizedBox(width: 10,),
              Text("ENDURANCE",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),

            ],
          )

        ],
      ),
      ),
    );
  }
}
