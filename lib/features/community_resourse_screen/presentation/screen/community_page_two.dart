import 'dart:convert';

import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/community_resourse_screen/presentation/widget/bottomsheet.dart';
import 'package:fitnessworld/features/community_resourse_screen/presentation/widget/page_two_tabbarview_one.dart';
import 'package:fitnessworld/features/community_resourse_screen/presentation/widget/tabbar_widget_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';

class CommunityPageTwo extends StatefulWidget {
  const CommunityPageTwo({super.key});

  @override
  State<CommunityPageTwo> createState() => _CommunityPageTwoState();
}

class _CommunityPageTwoState extends State<CommunityPageTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
              height: 230,
              decoration: BoxDecoration(
                color: MyColor.blackColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 88,
                        width: 88,
                        decoration: BoxDecoration(
                            color: MyColor.whiteColor,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(MyImage.ladyProfile),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Md Hafizur Rahman",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 16,)
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                MyImage.copyIcon,
                                height: 25,
                                width: 25,
                                colorFilter: ColorFilter.mode(
                                    MyColor.grayColor, BlendMode.srcIn),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "25 Post",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(MyImage.backGroundFullPlus,
                                  height: 20,
                                  width: 20,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor,
                                      BlendMode.srcIn)),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "58%",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                          alignment: Alignment.center,
                          height: 66,
                          width: 66,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                             color: MyColor.borderColor.withAlpha(150)
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image(
                                image: AssetImage(MyImage.notifictionIcon),
                                height: 30,
                                width: 30,
                                color: MyColor.whiteColor,
                              ),
                              Positioned(
                                top: -2,
                                right: 2,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 3),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: MyColor.whiteColor,width: 2),
                                      color: MyColor.splashBacColor
                                  ),
                                  child: Text("8",style: regularTextStyle18.copyWith(fontSize: 12,color: MyColor.whiteColor),),
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 60,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: MyColor.grayColor.withAlpha(150)),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: MyColor.grayColor,
                            borderRadius: BorderRadius.circular(25)),
                        labelColor: MyColor.whiteColor,
                        labelStyle: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor),
                        unselectedLabelColor:
                        MyColor.borderColor.withAlpha(100),
                        tabs: const [
                          Text(
                            "Community",
                          ),
                          Text("Resource"),
                        ],
                      )),
                ],
              ),
            ),
           Expanded(
             child: TabBarView(
               children: [
                 PageTwoTabbarviewOne(),
                 TabbarWidgetTwo(),
               ],
           ),
           )
          ],
        ),
      ),
    );
  }

  dynamic postList = [];

  void getPostData() async {
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    final apiResponse = await http.get(url);
    setState(() {
      postList = jsonDecode(apiResponse.body);
    });
  }
}
