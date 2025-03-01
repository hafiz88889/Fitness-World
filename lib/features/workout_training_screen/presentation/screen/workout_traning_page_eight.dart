import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutTraningPageEight extends StatefulWidget {
  const WorkoutTraningPageEight({super.key});

  @override
  State<WorkoutTraningPageEight> createState() =>
      _WorkoutTraningPageEightState();
}

bool isSelect = false;

class _WorkoutTraningPageEightState extends State<WorkoutTraningPageEight> {
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
            padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(150)),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter:
                          ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        checkColor: MyColor.blackColor,
                        activeColor: MyColor.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        value: isSelect,
                        onChanged: (value) {
                          setState(() {
                            isSelect = value!;
                          });
                        }),
                    Text(
                      "Complete",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColor.whiteColor),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              color: MyColor.blackColor,
                              value: 0.3,
                              backgroundColor: MyColor.borderColor,
                              strokeWidth: 12,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  MyColor.blackColor),
                            ),
                          ),
                          Positioned(
                              top: 12,
                              left: 20,
                              child: Text(
                                "8",
                                style: regularTextStyle24,
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            "Next Upper Cut",
                            style: regularTextStyle24,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                MyImage.fireIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.grayColor, BlendMode.srcIn),
                              ),
                              Text("25 reps",style: regularTextStyle18.copyWith(fontSize: 14),),
                              const SizedBox(width: 20,),
                              SvgPicture.asset(
                                MyImage.watchIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.grayColor, BlendMode.srcIn),
                              ),
                              Text("2Min",style: regularTextStyle18.copyWith(fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RouteHelper.workoutTraningPageNine);
                        },
                        child: Container(
                          height: 66,
                          width: 66,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(25),
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
                    ],
                  ),
                )
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
                child: SvgPicture.asset(
                  MyImage.backIcon,
                  colorFilter:
                      ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                  height: 30,
                  width: 30,
                ),
              ),
          ),
          Positioned(
              top: 450,
              right: 0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.workoutTraningPageNine);

                },
                child: Transform.rotate(
                    angle: -3,
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter:
                          ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                      height: 30,
                      width: 30,
                    ),),
              ),),
        ],
      ),
    );
  }
}
