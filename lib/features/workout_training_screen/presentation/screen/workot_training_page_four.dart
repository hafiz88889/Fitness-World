import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkotTrainingPageFour extends StatefulWidget {
  const WorkotTrainingPageFour({super.key});

  @override
  State<WorkotTrainingPageFour> createState() => _WorkotTrainingPageFourState();
}
final List<Map<String,dynamic>> allWorkout=[
  {"image":MyImage.backBodyMan,"text1":"Back Workout","text2":"10 Total","text3":"3X reps Each"},
  {"image":MyImage.gymMan,"text1":"Maximum Pull UP","text2":"4 Step","text3":"20X reps"},
  {"image":MyImage.backBodyMan,"text1":"Intense Core Abs","text2":"10 Total","text3":"5X reps "},
  {"image":MyImage.pushUpMan,"text1":"Back Workout","text2":"10 Total","text3":"3X reps Each"},
];
class _WorkotTrainingPageFourState extends State<WorkotTrainingPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImage.roundMachine),
                          fit: BoxFit.cover)),
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
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            MyImage.weightLiftIcon,
                            height: 40,
                            width: 40,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Strength",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.whiteColor, fontSize: 30),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: MyColor.whiteColor)),
                            child: Text(
                              "25 Total",
                              style: regularTextStyle18.copyWith(
                                  color: MyColor.whiteColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Build your muscles biggert & stronger with this exercise. Train everday to get bulk!",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.whiteColor.withAlpha(250),
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 300,
                  child: Container(
                    padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                    height: 700,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      color: MyColor.whiteColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "All Workouts",
                              style: regularTextStyle24.copyWith(fontSize: 24),
                            ),
                            const Spacer(),
                            Text(
                              "Newest Frist",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 16, color: MyColor.grayColor),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage(MyImage.wifiIcon),
                              height: 15,
                              width: 15,
                              color: MyColor.splashBacColor,
                            )
                          ],
                        ),
                        ListView.builder(
                          physics:const ClampingScrollPhysics(),
                          itemCount: allWorkout.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: MyColor.borderColor),
                              child: Row(
                                children: [
                                  Container(
                                    height: 66,
                                    width: 66,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage(allWorkout[index]["image"]), fit: BoxFit.cover))
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allWorkout[index]["text1"],
                                        style: regularTextStyle24,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            MyImage.watchIcon,
                                            colorFilter: ColorFilter.mode(
                                                MyColor.grayColor,
                                                BlendMode.srcIn),
                                            height: 15,
                                            width: 15,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            allWorkout[index]["text2"],
                                            style: regularTextStyle18.copyWith(
                                                fontSize: 14,
                                                color: MyColor.grayColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            MyImage.fireIcon,
                                            colorFilter: ColorFilter.mode(
                                                MyColor.grayColor,
                                                BlendMode.srcIn),
                                            height: 15,
                                            width: 15,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            allWorkout[index]["text3"],
                                            style: regularTextStyle18.copyWith(
                                                fontSize: 14,
                                                color: MyColor.grayColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(
                                    MyImage.rightArrowIcon,
                                    height: 30,
                                    width: 30,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor, BlendMode.srcIn),
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 50,
          width: 50,
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteHelper.workoutTraningPageFive);
            },
            child: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.splashBacColor,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.splashBacColor.withAlpha(100),
                    spreadRadius: 4
                  )
                  ]
              ),
              child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
            ),
          ),
        ),
      ),
    );
  }
}
