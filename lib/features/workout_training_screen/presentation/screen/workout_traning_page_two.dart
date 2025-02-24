import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/top_row_widget.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/workout_row_two.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/workout_widget_three.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/workouts_row_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WorkoutTraningPageTwo extends StatefulWidget {
  const WorkoutTraningPageTwo({super.key});

  @override
  State<WorkoutTraningPageTwo> createState() => _WorkoutTraningPageTwoState();
}
bool isSelect=false;
final List<Map<String, dynamic>> item = [
  {"image": MyImage.pushUpMan,"text1":"Aronold Pushup","text2":"50min","text3":"212kcal"},
  {"image": MyImage.gymMan,"text1":"Pulled Pushup","text2":"20min","text3":"151kcal"},
];

class _WorkoutTraningPageTwoState extends State<WorkoutTraningPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.workoutTraningPageThree);
                    },
                    child: Container(
                      height: 88,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(MyImage.ladyProfile),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ready for Training",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.grayColor, fontSize: 14),
                      ),
                      Row(
                        children: [
                          Text(
                            "Sumaiya Kulsum",
                            style: regularTextStyle18.copyWith(fontSize: 20),
                          ),
                          Image(
                            image: AssetImage(MyImage.verifyIcon),
                            height: 20,
                            width: 20,
                            color: MyColor.splashBacColor,
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 66,
                    width: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: MyColor.blackColor)),
                    child: SvgPicture.asset(MyImage.searchIcon),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopRowWidget(
                          title: "Strength", image: MyImage.weightLiftIcon),
                      TopRowWidget(title: "Endurance", image: MyImage.leafIcon),
                      TopRowWidget(title: "Yoga", image: MyImage.leafIcon),
                      TopRowWidget(
                          title: "Jogging", image: MyImage.joggingIcon),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.splashBacColorTwo.withAlpha(20),
                    border: Border.all(color: MyColor.splashBacColorTwo)),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(MyImage.pineAppleICon),
                      color: MyColor.greenColor,
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "You have 12+ AI workout Suggestion",
                      style: regularTextStyle18.copyWith(fontSize: 14),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(MyImage.blackGymLady),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColor.grayColor),
                          child: Text(
                            "Endurance",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor),
                          ),
                        ),
                        const Spacer(),
                        Image(
                          image: AssetImage(MyImage.shareIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.whiteColor,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(MyImage.hertIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.whiteColor,
                        )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "Total Body Circuit",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 30),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          MyImage.watchIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.splashBacColorTwo, BlendMode.srcIn),
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "50min",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.fireIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.splashBacColor, BlendMode.srcIn),
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "251kcal",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.weightLiftIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.grayColor, BlendMode.srcIn),
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Upper Body",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.whiteColor),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.splashBacColor,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 4,
                                  color: MyColor.splashBacColor.withAlpha(100))
                            ],
                          ),
                          child: SvgPicture.asset(MyImage.fireIcon),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Strength ",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Text(
                        "(32)",
                        style: regularTextStyle24.copyWith(
                            fontSize: 20,
                            color: MyColor.grayColor.withAlpha(150)),
                      ),
                    ],
                  ),
                  Text(
                    "See All ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 16, color: MyColor.splashBacColor),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bound) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  MyColor.whiteColor
                                ]).createShader(bound);
                          },
                          blendMode: BlendMode.darken,
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item[index]["image"]),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: MyColor.grayColor.withAlpha(120)),
                                  child: Text(
                                    "Upper Body",
                                    style: regularTextStyle18.copyWith(
                                        fontSize: 16,
                                        color: MyColor.whiteColor),
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item[index]["text1"],
                                          style: regularTextStyle24.copyWith(
                                              color: MyColor.blackColor,
                                              fontSize: 30),
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              MyImage.watchIcon,
                                              colorFilter: ColorFilter.mode(
                                                  MyColor.splashBacColorTwo,
                                                  BlendMode.srcIn),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              item[index]["text2"],
                                              style:
                                                  regularTextStyle18.copyWith(
                                                      color: MyColor.grayColor,
                                                      fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            SvgPicture.asset(
                                              MyImage.fireIcon,
                                              colorFilter: ColorFilter.mode(
                                                  MyColor.splashBacColor,
                                                  BlendMode.srcIn),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              item[index]["text3"],
                                              style:
                                                  regularTextStyle18.copyWith(
                                                      color: MyColor.grayColor,
                                                      fontSize: 14),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        //Navigator.pushNamed(context, RouteHelper.homeScreenTwelve);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: MyColor.splashBacColor,
                                        ),
                                        child: SvgPicture.asset(
                                            MyImage.arrowRight),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "AI Suggestion ",
                    style: regularTextStyle24.copyWith(fontSize: 20),
                  ),
                  Text(
                    "See All ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 16, color: MyColor.splashBacColor),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(15),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                          image: AssetImage(MyImage.yogaLady),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColor.grayColor.withAlpha(180),
                        ),
                        child: Text(
                          "Yoga & Meditanation",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.whiteColor),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Text("Motaveries\n Yoga Traning",style: regularTextStyle24.copyWith(fontSize: 24,color: MyColor.whiteColor),),
                      const SizedBox(height: 15,),
                      Text("Brenda Lee Sensee",style: regularTextStyle18.copyWith(fontSize: 18,color: MyColor.whiteColor),),
                      const SizedBox(height: 30,),
                      Row(
                        children: [
                          SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,width: 20,),
                         const SizedBox(width: 10,),
                          Text("50min",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),)
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,width: 20,),
                          const SizedBox(width: 10,),
                          Text("787kcal",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),)
                        ],
                      ),
                    ],
                  ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My Workouts ",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Text(
                        "(4)",
                        style: regularTextStyle24.copyWith(
                            fontSize: 20,
                            color: MyColor.grayColor.withAlpha(150)),
                      ),
                    ],
                  ),
                  Text(
                    "See All ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 16, color: MyColor.splashBacColor),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const WorkoutsRowOne(),
              const WorkoutRowTwo(),
              const WorkoutWidgetThree(),
            ],
          ),
        ),
      ),
    );
  }
}
