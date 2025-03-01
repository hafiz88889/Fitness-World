import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class VirtualFitnessPageFourteen extends StatelessWidget {
  const VirtualFitnessPageFourteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(MyImage.modelIcon),fit: BoxFit.cover)
              ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 88,
                  height: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.whiteColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(MyImage.loveIcon),
                      Text("76",style: regularTextStyle24.copyWith(fontSize: 20),),
                      Text("bpm",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.blackColor.withAlpha(150)),),
                    ],
                  ),
                ),
                Container(
                  width: 88,
                  height: 110,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.whiteColor

                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(MyImage.kgIcon),
                    Text("57.1",style: regularTextStyle24.copyWith(fontSize: 20),),
                    Text("kilogram",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.blackColor.withAlpha(150)),),
                  ],
                ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.whiteColor
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(MyImage.homeIcon),
                  )
                ),
                Container(
                    width: 64,
                    height: 64,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.whiteColor
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(MyImage.settingIcn),
                    )
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            left: 140,
            right: 140,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.virtualFitnessPageFifteen);
              },
              child: Container(
                  width: 96,
                  height: 96,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: MyColor.whiteColor
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(MyImage.cameraIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
