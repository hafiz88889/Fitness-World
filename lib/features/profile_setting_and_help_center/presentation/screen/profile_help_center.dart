import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/profile_setup_and_account_completion/presentation/widget/help_center_tab_one.dart';
import 'package:fitnessworld/features/profile_setup_and_account_completion/presentation/widget/help_center_tab_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileHelpCenter extends StatelessWidget {
  const ProfileHelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15,bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: MyColor.blackColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     GestureDetector(
                       onTap: () {
                         Navigator.pop(context);
                       },
                       child: Container(
                         padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: MyColor.whiteColor.withAlpha(150),
                         ),
                         child: SvgPicture.asset(
                           MyImage.backIcon,
                           colorFilter: ColorFilter.mode(
                               MyColor.whiteColor, BlendMode.srcIn),
                         ),
                       ),
                     ),
                     Text(
                       "Help Center",
                       style: regularTextStyle24.copyWith(
                           color: MyColor.whiteColor, fontSize: 24),
                     ),
                     Container(
                       padding: const EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: MyColor.whiteColor.withAlpha(150),
                       ),
                       child: SvgPicture.asset(
                         MyImage.settingIcn,
                         colorFilter: ColorFilter.mode(
                             MyColor.whiteColor, BlendMode.srcIn),
                       ),
                     ),
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
                            "FAQ",
                          ),
                          Text("Live Chat"),
                        ],
                      ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: TabBarView(children: [
                ProfileTabOne(),
                const HelpCenterTabTwo(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
