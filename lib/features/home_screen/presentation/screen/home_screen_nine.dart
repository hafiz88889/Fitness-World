import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/step_taken_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreenNine extends StatelessWidget {
  const HomeScreenNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body:   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(50),
                    ),
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                ),
                Text("Step Taken",style: regularTextStyle24.copyWith(fontSize: 24),),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: SvgPicture.asset(MyImage.settingIcn),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(value: 5, color: Colors.orange, radius: 50,),
                    PieChartSectionData(value: 20, color: Colors.green, radius: 40),
                    PieChartSectionData(value: 10, color: Colors.blue, radius: 30),
                  ],
                  sectionsSpace: 5,
                  centerSpaceRadius: 30,
                ),
              ),
            ),
            Text("2,574",style: regularTextStyle24.copyWith(fontSize: 50),),
            Text("Total Steps",style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.homeScreenTen);
                    }, child:
                StepTakenWidget(image: MyImage.fireIcon, title1: "578", title2: "kcal",color: MyColor.splashBacColor,)),
                StepTakenWidget(image: MyImage.fireIcon, title1: "5.8", title2: "kilometer",color: MyColor.grayColor,),
                StepTakenWidget(image: MyImage.watchIcon, title1: "25", title2: "minutes",color: MyColor.splashBacColorTwo,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
