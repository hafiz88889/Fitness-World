import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/diet_nutritio_screen/presentation/widget/page_five_tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class DietNutritionPageFive extends StatefulWidget {
  const DietNutritionPageFive({super.key});

  @override
  State<DietNutritionPageFive> createState() => _DietNutritionPageFiveState();
}

class _DietNutritionPageFiveState extends State<DietNutritionPageFive> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              height: 250,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Add New Meal",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.whiteColor, fontSize: 30),
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
                            "Menual",
                          ),
                          Text("AI Scan"),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  PageFiveTabbarView(),
                  Text("This is Page Tow")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyOne);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(MyColor.blackColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        MyImage.rightArrowIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor, BlendMode.srcIn),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
