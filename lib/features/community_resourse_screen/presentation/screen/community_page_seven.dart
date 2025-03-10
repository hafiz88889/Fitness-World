import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scroll_to_animate_tab/scroll_to_animate_tab.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class CommunityPageSeven extends StatelessWidget {
  const CommunityPageSeven({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> itemCount = [
      {
        "text1": "You have new followers!",
        "text2": "Akari M just followed you ",
        "time":"1m",
        "color": MyColor.splashBacColor,
        "image": MyImage.copyIcon,

      },
      {
        "text1": "Unread Message",
        "text2": "You have 8 unread message!",
        "time":"3m",
        "color": MyColor.grayColor,
        "image": MyImage.emailIcon
      },
      {
        "text1": "Someone Commented!",
        "text2": "Azunyan just Commented on",
        "time":"5m",
        "color": MyColor.splashBacColorTwo,
        "image": MyImage.weightLiftIcon
      },
      {
        "text1": "Someone Mentioned You ",
        "text2": "Akari M just mentioned you",
        "time":"7m",
        "color": MyColor.beguniColor,
        "image": MyImage.yogaIcon
      },
      {
        "text1": "Someone Posted Video",
        "text2": "Your friends posted a video ",
        "time":"10m",
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
                    "Community\nNotification",
                    style: regularTextStyle24.copyWith(
                        fontSize: 30, color: MyColor.whiteColor),
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
                            "Early Today ",
                            style: regularTextStyle24.copyWith(fontSize: 20),
                          ),
                          Expanded(
                            child: Text(
                              "(25)",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 20,
                                  color: MyColor.grayColor.withAlpha(150)),
                            ),
                          ),
                          Text(
                            "Most Urgent ",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.grayColor.withAlpha(150)),
                          ),
                          const SizedBox(width: 5,),
                          Image(image: AssetImage(MyImage.wifiIcon),color: MyColor.splashBacColor,height: 15,)
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
                              Navigator.pushNamed(context, RouteHelper.communityPageEight);
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
                                  Expanded(
                                    child: Column(
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
                                        Text(itemCount[index]["text2"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(100)),)
                                      ],
                                    ),
                                  ),
                                Text(itemCount[index]["time"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(100)),)
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
                            "Last Week ",
                            style: regularTextStyle24.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      label: "Last Week",
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
                                Expanded(
                                  child: Column(
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
                                      Text(itemCount[index]["text2"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(100)),)
                                    ],
                                  ),
                                ),
                                Text(itemCount[index]["time"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(100)),)
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],),
            ),
          ],
        ),
      ),
    );
  }
}
