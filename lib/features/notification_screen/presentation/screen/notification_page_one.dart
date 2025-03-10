import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/notification_screen/presentation/widget/page_one_tabbarview_one.dart';
import 'package:fitnessworld/features/notification_screen/presentation/widget/page_one_tabbarview_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class NotificationPageOne extends StatefulWidget {
  const NotificationPageOne({super.key});

  @override
  State<NotificationPageOne> createState() => _NotificationPageOneState();
}

class _NotificationPageOneState extends State<NotificationPageOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 15, right: 15, bottom: 20),
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
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Notifications",
                        style: regularTextStyle24.copyWith(
                            fontSize: 26, color: MyColor.whiteColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: MyColor.whiteColor)),
                        child: Text(
                          "+12",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor),
                        ),
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(MyImage.ladyProfile),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
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
                          "Today",
                        ),
                        Text("Past"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: TabBarView(
                  children: [
                    PageOneTabbarviewOne(),
                    PageOneTabbarviewTwo(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
