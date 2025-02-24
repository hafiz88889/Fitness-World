import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WorkoutTrainingPageFifteen extends StatelessWidget {
  const WorkoutTrainingPageFifteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(MyImage.gymLadyThree),fit: BoxFit.cover)
              ),
          ),
          Positioned(
            top: 160,
            left: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.splashBacColor
              ),
              child: Text("Move Up",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 280,
            right: 60,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColor
              ),
              child: Text("Bend",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 550,
            left: 50,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColor
              ),
              child: Text("Use Core",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 520,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColor
              ),
              child: Text("Bend 3X",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter: ColorFilter.mode(
                          MyColor.grayColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                Text("Form Analysis",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor),
                  child: SvgPicture.asset(
                    MyImage.settingIcn,
                    colorFilter: ColorFilter.mode(
                        MyColor.grayColor, BlendMode.srcIn),
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
                    child: SvgPicture.asset(MyImage.settingIcn),
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
                      child:Image(image: AssetImage(MyImage.filterIcon),height: 20,width: 20,)
                    ),
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
                Navigator.pushNamed(context, RouteHelper.virtualFitnessPageOne);
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
                    padding: const EdgeInsets.all(25.0),
                    child: SvgPicture.asset(MyImage.cameraIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
