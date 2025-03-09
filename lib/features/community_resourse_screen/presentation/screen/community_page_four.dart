import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class CommunityPageFour extends StatelessWidget {
  const CommunityPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>agenda=[
      {"image":MyImage.weightLiftIcon,"title":"Personalize Fitness 101","time":"30min","second":"Remote","sl":"01"},
      {"image":MyImage.fireIcon,"title":"Personalize Fitness 101","time":"30min","second":"Remote","sl":"02"},
      {"image":MyImage.five,"title":"Personalize Fitness 101","time":"30min","second":"Remote","sl":"03"},
      {"image":MyImage.two,"title":"Personalize Fitness 101","time":"30min","second":"Remote","sl":"04"},
    ];
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  ),
                  color: MyColor.blackColor),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.grayColor.withAlpha(150),
                            ),
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Article Detail",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20, color: MyColor.whiteColor),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.grayColor.withAlpha(150),
                            ),
                            child: Image(
                              image: AssetImage(MyImage.shareIcon),
                              color: MyColor.whiteColor,
                              height: 25,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A Revolution in AI Wellness with Sandow",
                      style: regularTextStyle24.copyWith(
                          fontSize: 30, color: MyColor.whiteColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage(MyImage.star),
                          color: MyColor.splashBacColor,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("4.5",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor)),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          MyImage.visibilityIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.grayColor, BlendMode.srcIn),
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("25k",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor)),
                        const SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(MyImage.hertIcon),
                          color: MyColor.redColor,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("525",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: MyColor.whiteColor,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(MyImage.ladyProfile),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Md Hafizur Rahman",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              Text(
                                "Md Hafizur Rahman",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 14, color: MyColor.grayColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColor.splashBacColor,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Follow",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                MyImage.addIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                                height: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Workshop overview",
                    style: regularTextStyle24.copyWith(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Introduction is the  Introduction is the Introduction Introdu ctionis the Introduction Introduction Introduction Introduction Introduction is the Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 14, color: MyColor.grayColor.withAlpha(150)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColorTwo),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.borderColor.withAlpha(120),
                          ),
                          child: Image(
                            image: AssetImage(MyImage.calenderIcon),
                            color: MyColor.whiteColor,
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "8 September 2025",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              Text(
                                "Monday 08:00-08:30PM",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                              Text(
                                "26 Joined 18 Interest ",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                            angle: -3,
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                              height: 25,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Agenda",
                    style: regularTextStyle24.copyWith(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Introduction is the  Introduction is the Introduction Introdu ctionis the Introduction Introduction Introduction Introduction Introduction is the Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 14, color: MyColor.grayColor.withAlpha(150)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    itemCount: agenda.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(12),
                    //    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 2)
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.borderColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColor.whiteColor,
                              ),
                              child: SvgPicture.asset(
                                agenda[index]["image"],
                                colorFilter: ColorFilter.mode(
                                    MyColor.grayColor, BlendMode.srcIn),
                                height: 20,
                              ),
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(agenda[index]["title"],style: regularTextStyle24.copyWith(fontSize: 16),),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    MyImage.watchIcon,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor, BlendMode.srcIn), height: 20,
                                  ),
                                  Text(agenda[index]["time"],style: regularTextStyle24.copyWith(fontSize: 14),),
                                  const SizedBox(width: 20,),
                                  SvgPicture.asset(
                                    MyImage.fireIcon,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor, BlendMode.srcIn), height: 20,
                                  ),
                                  Text(agenda[index]["second"],style: regularTextStyle24.copyWith(fontSize: 14),),
                                ],
                              ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColor.splashBacColor
                              ),
                              child: Text(agenda[index]["sl"],style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColor),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: MyColor.whiteColor)),
                          child: Text(
                            "Go Pro",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.whiteColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Unlocked Full Article!",
                          style: regularTextStyle24.copyWith(
                              fontSize: 24, color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 54,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, RouteHelper.communityPageTwo);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(MyColor.whiteColor),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Go Pro Now!",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.splashBacColor,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage(MyImage.star),
                                  color: MyColor.splashBacColor,
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
