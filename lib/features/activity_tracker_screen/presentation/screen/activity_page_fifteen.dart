import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/calorie_status_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/fat_forteen_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/weight_lifting_complete_page_slider.dart';

class ActivityPageFifteen extends StatefulWidget {
  const ActivityPageFifteen({super.key});

  @override
  State<ActivityPageFifteen> createState() => _ActivityPageFifteenState();
}

class _ActivityPageFifteenState extends State<ActivityPageFifteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(height: 50,),
            Text("Weightlifting\nComplete",textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 30)),
            const SizedBox(height: 20,),
            Text("Sandow Score +8 added",textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightLiftingCompletePageSlider(title1: "kcal", color: MyColor.splashBacColor, height: 100,title2: "25",),
                const SizedBox(width: 10,),
                WeightLiftingCompletePageSlider(title1: "kcal", color: MyColor.splashBacColorTwo, height: 100,title2: "70",),
                const SizedBox(width: 10,),
                WeightLiftingCompletePageSlider(title1: "kg", color: MyColor.grayColor, height: 100,title2: "55",)

              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.borderColor,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add More Weight",style: regularTextStyle24.copyWith(fontSize: 24),),
                      Text("+12 more AI Suggestion",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.blackColor.withAlpha(150)),)
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.splashBacColor
                    ),
                    child: SvgPicture.asset(MyImage.leafIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.workoutTraningPageOne);
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
                      "Great,Thanks",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
