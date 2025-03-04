import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scroll_to_animate_tab/scroll_to_animate_tab.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class VirtualFitnessPageThree extends StatelessWidget {
  const VirtualFitnessPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> itemCount = [
      {
        "text1": "How to Bulk Faster?",
        "text2": "GPT-5?",
        "text3": "1.2k Total",
        "color": MyColor.splashBacColor,
        "image": MyImage.resturentIcon
      },
      {
        "text1": "Optimal Fitness Scatch  ",
        "text2": "GPT-5?",
        "text3": "865 Total",
        "color": MyColor.splashBacColorTwo,
        "image": MyImage.copyIcon
      },
      {
        "text1": "Core Vs Upper body",
        "text2": "GPT-5?",
        "text3": "55 Total",
        "color": MyColor.redColor,
        "image": MyImage.weightLiftIcon
      },
      {
        "text1": "How to Bulk Faster?",
        "text2": "GPT-5?",
        "text3": "5.2k Total",
        "color": MyColor.beguniColor,
        "image": MyImage.yogaIcon
      },
      {
        "text1": "Optimal Fitness Scatch  ",
        "text2": "GPT-5?",
        "text3": "865 Total",
        "color": MyColor.splashBacColorTwo,
        "image": MyImage.copyIcon
      },
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColor.blackColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(100),
                      ),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "My AI Chat",
                    style: regularTextStyle24.copyWith(
                        fontSize: 24, color: MyColor.whiteColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ScrollToAnimateTab(
                  bodyAnimationCurve: Curves.bounceIn,
                  activeTabDecoration: TabDecoration(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.blackColor,
                      ),
                      textStyle: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor)),
                  inActiveTabDecoration: TabDecoration(
                    textStyle: regularTextStyle24.copyWith(
                        color: MyColor.whiteColor.withAlpha(200)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.grayColor.withAlpha(100),
                    ),
                  ),
                  tabs: [
                    ScrollableList(
                      bodyLabelDecoration: Row(
                        children: [
                          Text(
                            "Recent ",
                            style: regularTextStyle24.copyWith(fontSize: 20),
                          ),
                          Text(
                            "(25)",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20,
                                color: MyColor.grayColor.withAlpha(150)),
                          ),
                          const Spacer(),
                          Text(
                            "See All ",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.splashBacColor),
                          ),
                        ],
                      ),
                      label: "All",
                      body: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: itemCount.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, RouteHelper.virtualFitnessPageFour);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  bottom: 10, right: 10, left: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.borderColor,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(25),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: itemCount[index]["color"],
                                    ),
                                    child: SvgPicture.asset(
                                      itemCount[index]["image"],
                                      colorFilter: ColorFilter.mode(
                                          MyColor.whiteColor, BlendMode.srcIn),
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        itemCount[index]["text1"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: regularTextStyle24,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            MyImage.settingIcn,
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
                                            itemCount[index]["text2"],
                                            style: regularTextStyle18.copyWith(
                                                color: MyColor.grayColor,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          SvgPicture.asset(
                                            MyImage.fireIcon,
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
                                            itemCount[index]["text3"],
                                            style: regularTextStyle18.copyWith(
                                                color: MyColor.grayColor,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(
                                    MyImage.rightArrowIcon,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor.withAlpha(150),
                                        BlendMode.srcIn),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    ScrollableList(
                      bodyLabelDecoration: Row(
                        children: [
                          Text(
                            "Archived ",
                            style: regularTextStyle24.copyWith(fontSize: 20),
                          ),
                          Text(
                            "(12)",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20,
                                color: MyColor.grayColor.withAlpha(150)),
                          ),
                          const Spacer(),
                          Text(
                            "See All ",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.splashBacColor),
                          ),
                        ],
                      ),
                      label: "Archived",
                      body: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: itemCount.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.borderColor,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(25),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: itemCount[index]["color"],
                                  ),
                                  child: SvgPicture.asset(
                                    itemCount[index]["image"],
                                    colorFilter: ColorFilter.mode(
                                        MyColor.whiteColor, BlendMode.srcIn),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      itemCount[index]["text1"],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: regularTextStyle24,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          MyImage.settingIcn,
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
                                          itemCount[index]["text2"],
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.grayColor,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SvgPicture.asset(
                                          MyImage.fireIcon,
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
                                          itemCount[index]["text3"],
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.grayColor,
                                              fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  MyImage.rightArrowIcon,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor.withAlpha(150),
                                      BlendMode.srcIn),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    ScrollableList(
                      bodyLabelDecoration: Row(
                        children: [
                          Text(
                            "Related ",
                            style: regularTextStyle24.copyWith(fontSize: 20),
                          ),
                          Text(
                            "(10)",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20,
                                color: MyColor.grayColor.withAlpha(150)),
                          ),
                          const Spacer(),
                          Text(
                            "See All ",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.splashBacColor),
                          ),
                        ],
                      ),
                      label: "Related",
                      body: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: itemCount.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.borderColor,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(25),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: itemCount[index]["color"],
                                  ),
                                  child: SvgPicture.asset(
                                    itemCount[index]["image"],
                                    colorFilter: ColorFilter.mode(
                                        MyColor.whiteColor, BlendMode.srcIn),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      itemCount[index]["text1"],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: regularTextStyle24,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          MyImage.settingIcn,
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
                                          itemCount[index]["text2"],
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.grayColor,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SvgPicture.asset(
                                          MyImage.fireIcon,
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
                                          itemCount[index]["text3"],
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.grayColor,
                                              fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  MyImage.rightArrowIcon,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor.withAlpha(150),
                                      BlendMode.srcIn),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
