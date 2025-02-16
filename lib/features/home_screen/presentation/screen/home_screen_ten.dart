
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/ai_suggest_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/step_history_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenTen extends StatelessWidget {
  const HomeScreenTen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: DefaultTabController(
        length: 4,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Step State",
                      style: regularTextStyle24.copyWith(fontSize: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor),
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
                      Text(
                        "1d",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "1w",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "1m",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "All",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 1),
                            const FlSpot(1, 2),
                            const FlSpot(2, 1.5),
                            const FlSpot(3, 2.5),
                            const FlSpot(4, 2),
                            const FlSpot(5, 3),
                          ],
                          isCurved: true,
                          color: MyColor.splashBacColor,
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
                Row(
                  children: [
                    Text(
                      "1,877",
                      style: regularTextStyle24.copyWith(fontSize: 30),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Total",
                      style: regularTextStyle18.copyWith(
                          fontSize: 18, color: MyColor.grayColor),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.stop,
                      color: MyColor.splashBacColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Current",
                      style: regularTextStyle18.copyWith(fontSize: 14),
                    ),
                    Icon(
                      Icons.stop,
                      color: MyColor.splashBacColorTwo,
                    ),
                    Text(
                      "Previous ",
                      style: regularTextStyle18.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "AI Suggestion",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                const AiSuggest(),//this is from another page
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Step History ",
                      style: regularTextStyle24.copyWith(fontSize: 20),
                    ),
                    Image(
                      image: AssetImage(MyImage.threeDotMenuIcon),
                      color: MyColor.grayColor,
                      height: 25,
                      width: 25,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                StepHistoryWidget(
                    title1: "Jogging to Mc donald's",
                    title2: "5,214 Step",
                    title3: "215 kcal",
                    image: MyImage.runningIcon,
                    color: MyColor.splashBacColor),
                StepHistoryWidget(
                    title1: "Hiking to Mr Roshmore",
                    title2: "1001 Step",
                    title3: "115 kcal",
                    image: MyImage.runningIcon,
                    color: MyColor.splashBacColorTwo),
                StepHistoryWidget(
                    title1: "Jogging to Mc donald's",
                    title2: "5,214 Step",
                    title3: "215 kcal",
                    image: MyImage.runningIcon,
                    color: MyColor.redColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
