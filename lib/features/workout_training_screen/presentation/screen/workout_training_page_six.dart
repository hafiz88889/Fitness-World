import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkotTrainingPageSix extends StatefulWidget {
  const WorkotTrainingPageSix({super.key});

  @override
  State<WorkotTrainingPageSix> createState() => _WorkotTrainingPageSixState();
}

final List<Map<String, dynamic>> allWorkout = [
  {
    "image": MyImage.backBodyMan,
    "text1": "Basic Back Warmup",
    "text2": "05:30",
    "text3": "Exercise 1"
  },
  {
    "image": MyImage.gymMan,
    "text1": "High Bent Over Row",
    "text2": "12:30",
    "text3": "Exercise 2"
  },
  {
    "image": MyImage.backBodyMan,
    "text1": "Slow Renegade Row",
    "text2": "12:15",
    "text3": "Exercise 3"
  },
];

class _WorkotTrainingPageSixState extends State<WorkotTrainingPageSix> {
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
                  padding: const EdgeInsets.only(
                      top: 35, left: 15, right: 15, bottom: 15),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImage.backBodyMan),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                                  color: MyColor.borderColor.withAlpha(150)),
                              child: SvgPicture.asset(
                                MyImage.backIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.borderColor.withAlpha(150)),
                            child: SvgPicture.asset(
                              MyImage.settingIcn,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
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
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Back Workout",
                        style: regularTextStyle24.copyWith(
                            fontSize: 36, color: MyColor.whiteColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "With Azunyan U. Wu   ",
                        style: regularTextStyle24.copyWith(
                            fontSize: 16,
                            color: MyColor.whiteColor.withAlpha(250)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 350,
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 25, left: 15, right: 15),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      color: MyColor.whiteColor,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Prepare to transform your chest muscles with our targeted and effective chest workout routine tailored for you",
                          textAlign: TextAlign.center,
                          style: regularTextStyle18.copyWith(
                              fontSize: 16, color: MyColor.grayColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  MyImage.watchIcon,
                                  height: 25,
                                  width: 25,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "58Min",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.blackColor, fontSize: 24),
                                ),
                                Text(
                                  "Time",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.grayColor.withAlpha(150),
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  MyImage.fireIcon,
                                  height: 25,
                                  width: 25,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "254kcal",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.blackColor, fontSize: 24),
                                ),
                                Text(
                                  "Kalorie",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.grayColor.withAlpha(150),
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  MyImage.weightLiftIcon,
                                  height: 25,
                                  width: 25,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "3X4",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.blackColor, fontSize: 24),
                                ),
                                Text(
                                  "Sets",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.grayColor.withAlpha(150),
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          //physics:const AlwaysScrollableScrollPhysics(),
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
                                  Stack(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    allWorkout[index]["image"]),
                                                fit: BoxFit.cover)),
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: 20,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: MyColor.splashBacColor,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: MyColor
                                                        .splashBacColor
                                                        .withAlpha(50),
                                                    spreadRadius: 3)
                                              ]),
                                          child: Image(
                                            image: AssetImage(MyImage.playIcon),
                                            color: MyColor.whiteColor,
                                            height: 10,
                                            width: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              MyColor.grayColor.withAlpha(100),
                                        ),
                                        child: Text(
                                          allWorkout[index]["text3"],
                                          style: regularTextStyle18.copyWith(
                                              fontSize: 14),
                                        ),
                                      ),
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
                                                MyColor.grayColor.withAlpha(100),
                                                BlendMode.srcIn),
                                            height: 20,
                                            width: 20,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            allWorkout[index]["text2"],
                                            style: regularTextStyle24.copyWith(
                                                fontSize: 16,
                                                color: MyColor.grayColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: (){
            Navigator.pushNamed(context, RouteHelper.wrkoutTraningPageSeven);
            },
            style: ButtonStyle(
                backgroundColor:
                WidgetStateProperty.all(MyColor.splashBacColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Start Workout",
                  style: regularTextStyle18.copyWith(
                      color: MyColor.whiteColor, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image(image: AssetImage(MyImage.alarmIcon),height: 25,width: 25,color: MyColor.whiteColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
