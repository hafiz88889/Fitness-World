import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/screen/workout_training_page_ten.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';
class WorkoutTrainingPageThirteen extends StatefulWidget {
  const WorkoutTrainingPageThirteen({super.key});

  @override
  State<WorkoutTrainingPageThirteen> createState() => _WorkoutTrainingPageThirteenState();
}
bool isSelect=false;
bool isSelectTwo=false;
class _WorkoutTrainingPageThirteenState extends State<WorkoutTrainingPageThirteen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 35, left: 10, right: 10, bottom: 10),
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage(MyImage.blackGymManTwo),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
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
                              color: MyColor.grayColor,
                            ),
                            child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.grayColor,
                          ),
                          child: SvgPicture.asset(MyImage.settingIcn,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.splashBacColorTwo),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            MyImage.weightLiftIcon,
                            height: 25,
                            width: 25,
                          ),
                          Text(
                            "Mindset",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Correct Your Form",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          MyImage.watchIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.splashBacColorTwo, BlendMode.srcIn),
                          height: 25,
                          width: 25,
                        ),
                        Text(
                          "30 Minutes",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          MyImage.fireIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.splashBacColor, BlendMode.srcIn),
                          height: 25,
                          width: 25,
                        ),
                        Text(
                          "787 kcal",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                 Container(
                   height:56,
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.borderColor,
                   ),
                   child: TabBar(
                     indicatorSize: TabBarIndicatorSize.tab,
                       labelStyle: regularTextStyle24,
                       dividerColor: Colors.transparent,
                       unselectedLabelColor: MyColor.grayColor,
                       labelColor: MyColor.whiteColor,
                       indicator: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [
                           BoxShadow(
                             color: MyColor.grayColor.withAlpha(150),
                             spreadRadius: 4,
                           )
                         ],
                         color: MyColor.blackColor
                       ),
                       tabs: const [
                         Text("Overview"),
                         Text("Directions"),
                       ],
                   ),
                 ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text("Why correct my fitness form?",style: regularTextStyle24,),
                          const SizedBox(height: 8,),
                          Text("Achieve maximum results and prevent injuries by mastering the art of proper exercise from Pur AI is here to guide you ensuring each movement is precise and effective.",textAlign:TextAlign.start,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  height:200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage(MyImage.manFontSide),fit: BoxFit.cover)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                          activeColor: MyColor.splashBacColor,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                          value: isSelectTwo, onChanged: (value){
                                        setState(() {
                                          isSelectTwo=value!;
                                        });
                                      }),
                                      Text("Front",style: regularTextStyle24,)
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  height:200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage(MyImage.manBackSide),fit: BoxFit.cover)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                          activeColor: MyColor.splashBacColor,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                          value: isSelect, onChanged: (value){
                                        setState(() {
                                          isSelect=value!;
                                        });
                                      }),
                                      Text("Back",style: regularTextStyle24,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                        const Text("Settings Screen", style: TextStyle(fontSize: 24)),
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
