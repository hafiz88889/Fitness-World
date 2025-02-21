import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/benifits_widget.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/important_matrick_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityScreenPageEleven extends StatelessWidget {
  const ActivityScreenPageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: const Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(MyImage.runningMan),
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
                                  color: MyColor.whiteColor,
                                ),
                                child: SvgPicture.asset(MyImage.backIcon),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColor.whiteColor,
                                ),
                                child: SvgPicture.asset(MyImage.settingIcn)),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 120,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.splashBacColorTwo,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                MyImage.joggingIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                                height: 25,
                                width: 25,
                              ),
                              Text(
                                "Jogging",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Mornign Boost",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              MyImage.watchIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor.withAlpha(200),
                                  BlendMode.srcIn),
                              height: 25,
                              width: 25,
                            ),
                            Text(
                              "30min",
                              style: regularTextStyle18.copyWith(
                                  color: MyColor.whiteColor),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SvgPicture.asset(
                              MyImage.fireIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor.withAlpha(200),
                                  BlendMode.srcIn),
                              height: 25,
                              width: 25,
                            ),
                            Text(
                              "785kcal",
                              style: regularTextStyle18.copyWith(
                                  color: MyColor.whiteColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 56,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyColor.borderColor,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: MyColor.grayColor,
                          spreadRadius: 3,
                        )
                      ],
                      color: MyColor.blackColor,
                    ),
                    labelColor: MyColor.whiteColor,
                    unselectedLabelColor: MyColor.grayColor.withAlpha(150),
                    tabs: const [
                       Text("Overview"),  Text("Directions")
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Description",
                style: regularTextStyle24.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Emabrace the morning sun and revitailize your body and mind with our Morning Boost routine This energizing workout is designed to kickstart your metabolism increase your energy levels and set a positive tone for the day ahead",
                textAlign: TextAlign.start,
                style: regularTextStyle18.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(height: 25,),
              Text(
                "Video",
                style: regularTextStyle24.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 150,),
              Text(
                "Important Metrics",
                style: regularTextStyle24.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "There are many benifits of doing morning activities here are the most important:",
                textAlign: TextAlign.start,
                style: regularTextStyle18.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: MyColor.grayColor,)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                        color: MyColor.blackColor
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage(MyImage.userIcon,),color: MyColor.whiteColor,height: 30,width: 30,),
                          Text("Exercise Name",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                          Image(image: AssetImage(MyImage.questionMarkIcon),color: MyColor.grayColor,height: 30,width: 30,),
                          const Spacer(),
                          Text("Gain%",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),)
                        ],
                      ),
                    ),
                    ImportantMatrickWidget(title: "Plank Jack", color: MyColor.greenColor, parcent: 0.5,color2: MyColor.borderColor,),
                    const Divider(),
                    ImportantMatrickWidget(title: "Pullup", color: MyColor.splashBacColor, parcent: 0.8,color2: MyColor.whiteColor,),
                    const Divider(),
                    ImportantMatrickWidget(title: "Plank Jack", color: MyColor.greenColor, parcent: 0.2,color2: MyColor.borderColor,),
                    const Divider(),
                    ImportantMatrickWidget(title: "Pullup", color: MyColor.splashBacColor, parcent: 0.6,color2: MyColor.whiteColor,),
                    const Divider(),
                    ImportantMatrickWidget(title: "Plank Jack", color: MyColor.splashBacColor, parcent: 0.1,color2: MyColor.borderColor,),
                    const Divider(),
                    ImportantMatrickWidget(title: "Pullup", color: MyColor.greenColor, parcent: 0.9,color2: MyColor.whiteColor,),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Text(
                "Benefits",
                style: regularTextStyle24.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 10,),
              Text(
                "There are many benefits of doing morning activities here are the most important:",
                textAlign: TextAlign.start,
                style: regularTextStyle18.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Wrap(
                  children: [
                   BenifitWidget(image: MyImage.watchIcon, title1: "Boost Energy Lebel"),
                   BenifitWidget(image: MyImage.watchIcon, title1: "Improve Force & Productivity"),
                   BenifitWidget(image: MyImage.emojiIconOne, title1: "Enhance Mood Positively"),
                   BenifitWidget(image: MyImage.backGroundFullPlus, title1: "Establish Healthy Routine")
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.splashBacColor
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Score Reward",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                        const SizedBox(height: 20,),
                        Text("Increase your Sandow Score\nafter you resolved this ",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.whiteColor
                      ),
                      child: Row(
                        children: [
                          Text("+8",style: regularTextStyle24.copyWith(color: MyColor.splashBacColor,fontSize: 40),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.activityScreenPageTwelve);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.blackColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Resolve Suggestion",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor , BlendMode.srcIn),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
