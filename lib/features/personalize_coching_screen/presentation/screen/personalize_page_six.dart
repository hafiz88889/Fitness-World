import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/browse_tabbar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class PersonalizePageSix extends StatelessWidget {
  const PersonalizePageSix({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(45),),
                color: MyColor.blackColor
              ),
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
                      Text("Browse Fitness Coach",style: regularTextStyle24.copyWith(fontSize: 20,color: MyColor.whiteColor),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.grayColor.withAlpha(100)
                    ),
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: MyColor.whiteColor,
                      labelStyle: regularTextStyle24,
                      unselectedLabelColor: MyColor.grayColor,
                      indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.grayColor.withAlpha(100),
                      ),
                      tabs: const [
                        Text("Near You"),
                        Text("Search"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Expanded(
                child: TabBarView(
                children: [
              BrowseTabbarViewWidget(),
              BrowseTabbarViewWidget(),
            ]
            ))
          ],
        ),
      ),
    );
  }
}
