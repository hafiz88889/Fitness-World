import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/community_resourse_screen/presentation/widget/page_eitght_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class CommunityPageEight extends StatelessWidget {
  const CommunityPageEight({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage(MyImage.dumbleImage),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 50),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColor.whiteColor.withAlpha(100),
                                ),
                                child: SvgPicture.asset(
                                  MyImage.backIcon,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.whiteColor, BlendMode.srcIn),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 40,
                  right: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: MyColor.grayColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(
                          image: AssetImage(MyImage.filterIcon),
                          color: MyColor.whiteColor,
                          height: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                color: MyColor.whiteColor,
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                    image: AssetImage(MyImage.ladyProfile),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            top: 105,
                            left: 35,
                            right: 35,
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: MyColor.blackColor),
                              child: Image(
                                image: AssetImage(MyImage.editIcon),
                                color: MyColor.whiteColor,
                                height: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 66,
                          width: 66,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: MyColor.grayColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            MyImage.settingIcn,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Md Hafizur Rahman",
                          style: regularTextStyle24.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image(
                          image: AssetImage(MyImage.verifyIcon),
                          color: MyColor.splashBacColorTwo,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.splashBacColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Follow",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.whiteColor),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  MyImage.addIcon,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.whiteColor, BlendMode.srcIn),
                                  height: 15,
                                )
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, RouteHelper.communityPageNine);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: MyColor.blackColor)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Message",
                                      style: regularTextStyle24.copyWith(
                                          color: MyColor.blackColor),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image(
                                      image: AssetImage(MyImage.messageIcon),
                                      color: MyColor.blackColor,
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tokyo",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.grayColor.withAlpha(150)),
                        ),
                        Text(
                          "879 following",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.grayColor.withAlpha(150)),
                        ),
                        Text(
                          "774 followers",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.grayColor.withAlpha(150)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Hey! I'm a human fitness coach based in Japan! if you wanna get ripped then let's DM me ASAP! UwU",
                      textAlign: TextAlign.center,
                      style: regularTextStyle24.copyWith(
                          color: MyColor.grayColor.withAlpha(150)),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: MyColor.borderColor,
                      ),
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.grayColor.withAlpha(100),
                              spreadRadius: 4,
                            )
                          ],
                          color: MyColor.blackColor,
                        ),
                          labelColor: MyColor.whiteColor,
                          labelStyle: regularTextStyle24.copyWith(color: MyColor.whiteColor),
                          unselectedLabelColor: MyColor.grayColor.withAlpha(150),
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: const [
                             Text("All"),
                             Text("Post"),
                             Text("Video"),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                        
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                  children: [
                    PageEitghtTabbarview(),
                    Text("Page Two"),
                    Text("Page Three"),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
