import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VirtualFitnessPageEleven extends StatelessWidget {
  const VirtualFitnessPageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              "South Anything to \nCoach Sandow!",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Image(image: AssetImage(MyImage.gymManImageSix),height: 600,width: double.infinity,fit: BoxFit.cover,),
          Positioned(
           bottom: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                      color: MyColor.whiteColor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        padding:EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.borderColor
                        ),
                        child: SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                      ),
                      Text("Ready?",style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwelve);
                        },
                        child: Container(
                          height: 66,
                          width: 66,
                          padding:EdgeInsets.all(22),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.borderColor
                          ),
                          child: SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),

                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 150,
                  bottom: 80,
                  child: Container(
                    padding: EdgeInsets.all(35),
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
          ),
        ],
      )
    );
  }
}
