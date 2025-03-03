import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/review_tabbar_view_wdiget.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class PersonalizePageFive extends StatelessWidget {
  const PersonalizePageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16),
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
                        color: MyColor.borderColor,
                      ),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.grayColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text("Review",style: regularTextStyle24.copyWith(fontSize: 24),)
                ],
              ),
              const SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.personalizePageSix);
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: MyColor.blackColor
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("4.5",style: regularTextStyle24.copyWith(fontSize: 60,color: MyColor.whiteColor),),
                          Text("87 Reviews",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      const Expanded(
                        child: Column(
                          children: [
                            ReviewWidget(rate: "4.8",rattingMap: 0.8,),
                            ReviewWidget(rate: "2.8",rattingMap: 0.28,),
                            ReviewWidget(rate: "3.8",rattingMap: 0.38,),
                            ReviewWidget(rate: "4.5",rattingMap: 0.85,),
                            ReviewWidget(rate: "1.8",rattingMap: 0.10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.borderColor
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: MyColor.whiteColor,
                  labelStyle: regularTextStyle24,
                  unselectedLabelColor: MyColor.grayColor,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.splashBacColor,
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.splashBacColor.withAlpha(150),
                        spreadRadius: 4
                      )
                    ]
                  ),
                  tabs: const [
                    Text("Recent"),
                    Text("Positive"),
                    Text("Negetive"),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ReviewTabbarViewWdiget(),
                    ReviewTabbarViewWdiget(),
                    ReviewTabbarViewWdiget(),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
