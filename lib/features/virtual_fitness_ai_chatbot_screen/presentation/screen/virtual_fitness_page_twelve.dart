import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VirtualFitnessPageTwelve extends StatelessWidget {
  const VirtualFitnessPageTwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          const SizedBox(height: 100,),
          Center(
            child: Text(
              "Hey Couch You \ncan Setup Jogging in\n Morning Route",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30,color: MyColor.grayColor),
            ),
          ),
          const SizedBox(height: 50,),
          Center(
            child: Text(
              "Hey Couch You \ncan Setup Jogging in\n Morning Route",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30,),
            ),
          ),
          const SizedBox(height: 50,),
          Image(image: AssetImage(MyImage.voiceImage))
        ],
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                color: MyColor.grayColor.withAlpha(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 66,
                  width: 66,
                  padding:const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.splashBacColor
                  ),
                  child: SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                ),
                Text("00:05",style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.virtualFitnessPageThirteen);
                  },
                  child: Container(
                    height: 66,
                    width: 66,
                    padding:const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColorTwo
                    ),
                    child: SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),

                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 150,

            bottom: 80,
            child: Container(
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColor.blackColor,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.grayColor.withAlpha(150),
                    spreadRadius: 5,
                  )
                ]
              ),
              child: SvgPicture.asset(MyImage.voiceIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
            ),
          )
        ],
      )
    );
  }
}
