import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/step_taken_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ActivityTrackerPageSeven extends StatelessWidget {
  const ActivityTrackerPageSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body:   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Text("Jogging Complete",style: regularTextStyle24.copyWith(fontSize: 24),),
            SizedBox(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(value: 50, color:MyColor.blackColor, radius: 50,titleStyle: regularTextStyle18.copyWith(color: MyColor.whiteColor)),
                    PieChartSectionData(value: 20, color: MyColor.splashBacColor, radius: 40),
                    PieChartSectionData(value: 10, color: MyColor.splashBacColorTwo, radius: 30),
                  ],
                  sectionsSpace: 5,
                  centerSpaceRadius: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.splashBacColor
                  ),
                ),
                const SizedBox(width: 10,),
                Text("Distance",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
                const SizedBox(width: 30,),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.blackColor
                  ),
                ),
                const SizedBox(width: 10,),
                Text("Calorie",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
                const SizedBox(width: 30,),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.splashBacColorTwo
                  ),
                ),
                const SizedBox(width: 10,),
                Text("BPM",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
              ],
            ),
            const SizedBox(height: 40,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Post Jogging Stretch",style: regularTextStyle24.copyWith(fontSize: 24),),
                      Text("12+ More AI Suggestion",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColor
                    ),
                    child: Image(image: AssetImage(MyImage.runningIcon),height: 25,width: 25,color: MyColor.whiteColor,)
                  ),
                ],
              ),
            ),
           const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.activityTrackerPageEight);
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
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImage.arrowRight,
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
