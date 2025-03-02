import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/tabbar_view_widget.dart';
import 'package:flutter/material.dart';

class PersonalizePageThree extends StatelessWidget {
  const PersonalizePageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.borderColor,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.transparent,
                    labelColor: MyColor.whiteColor,
                    dividerColor: Colors.transparent,
                    labelStyle: regularTextStyle24,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.blackColor),
                    tabs: const [Text("Male"), Text("Female")],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  TabbarViewWidget(
                      image: MyImage.robotImageFour,
                      title1: "X-EX-A-XII",
                      logo: MyImage.settingIcn,
                      title2: "AI",
                      title3: "4.5",
                      title4: "21 Client"),
                  TabbarViewWidget(
                      image: MyImage.ladyImageOne,
                      title1: "Fairness Vndymion",
                      logo: MyImage.settingIcn,
                      title2: "Human",
                      title3: "3.5",
                      title4: "87 Client"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
