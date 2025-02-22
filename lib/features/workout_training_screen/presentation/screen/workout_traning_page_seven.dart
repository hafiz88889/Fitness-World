import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WorkoutTraningPageSeven extends StatelessWidget {
  const WorkoutTraningPageSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withAlpha(250)],
              ).createShader(bounds);
            },
            blendMode: BlendMode.darken,
            child: Image(
              image: AssetImage(MyImage.gymManTwo),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35,left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(150)),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter: ColorFilter.mode(
                          MyColor.whiteColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColor.whiteColor)),
                    child: Text(
                      "Exercise 1",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "Back Workout",
                    style: regularTextStyle24.copyWith(
                        fontSize: 36, color: MyColor.whiteColor),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Text("0.00",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                    const SizedBox(width: 10,),
                    LinearPercentIndicator(
                      animation: true,
                      alignment: MainAxisAlignment.center,
                      barRadius: const Radius.circular(20),
                      padding: const EdgeInsets.all(1),
                      width: 230.0,
                      lineHeight: 10.0,
                      percent: 0.5,
                      backgroundColor: MyColor.whiteColor.withAlpha(150),
                      progressColor: MyColor.whiteColor,
                    ),
                    const SizedBox(width: 10,),
                    Text("0.00",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                  ],
                ),
                const SizedBox(height: 15,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.workoutTraningPageEight);
                    },
                    child: Container(
                          height: 66,
                          width: 66,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(20),
                              color: MyColor.splashBacColor,
                              boxShadow: [
                                BoxShadow(
                                    color: MyColor.splashBacColor.withAlpha(100),
                                    spreadRadius: 3)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(
                              image: AssetImage(MyImage.playIcon),
                              color: MyColor.whiteColor,
                              height: 10,
                              width: 10,
                            ),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 450,
              left: 0,
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 30,width: 30,))
          ),
          Positioned(
              top: 450,
              right: 0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.workoutTraningPageEight);
                },
                child: Transform.rotate(
                    angle: -3,
                    child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 30,width: 30,)),
              )
          ),
        ],
      ),
    );
  }
}
