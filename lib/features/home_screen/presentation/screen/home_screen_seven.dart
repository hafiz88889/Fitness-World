import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenSeven extends StatefulWidget {
  const HomeScreenSeven({super.key});

  @override
  State<HomeScreenSeven> createState() => _HomeScreenSevenState();
}
class _HomeScreenSevenState extends State<HomeScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
                  Text(
                    "Calorie",
                    style: regularTextStyle24.copyWith(fontSize: 20),
                  ),
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
                      child: SvgPicture.asset(MyImage.settingIcn),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),height: 30,width: 30,),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.homeScreenEight);
                    },
                    child: Text("318",style: regularTextStyle24.copyWith(fontSize: 80),)),
                const SizedBox(width: 10,),
                Text("kcal",style: regularTextStyle24.copyWith(fontSize: 40,color: MyColor.grayColor),),
              ],
            ),
            Text("Burn 250 calorie left",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.grayColor),),
      const Spacer(),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1),
                        FlSpot(1, 2),
                        FlSpot(2, 1.5),
                        FlSpot(3, 2.5),
                        FlSpot(4, 2),
                        FlSpot(5, 3),
                      ],
                      isCurved: true,
                      color:MyColor.splashBacColor,
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            MyColor.splashBacColor.withAlpha(120),
                            MyColor.splashBacColor.withAlpha(30)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      dotData: const FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.whiteColor
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      color: MyColor.blackColor.withAlpha(50),
                      spreadRadius: 3,
                    )
                  ],
                  color: MyColor.blackColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                labelColor: MyColor.whiteColor,
                unselectedLabelColor: MyColor.grayColor,
                tabs: const [
                  Text("1d",style: TextStyle(fontSize: 16),),
                  Text("1w",style: TextStyle(fontSize: 16),),
                  Text("1m",style: TextStyle(fontSize: 16),),
                  Text("All",style: TextStyle(fontSize: 16),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
