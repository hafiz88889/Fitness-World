import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartRateHistoryWidget extends StatelessWidget {
  const HeartRateHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: MyColor.borderColor
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pre-workout Stretch",style: regularTextStyle24,),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SvgPicture.asset(MyImage.four,colorFilter: ColorFilter.mode(MyColor.redColor, BlendMode.srcIn),),
                  Text("78 bpm",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                  SizedBox(
                    height: 8,
                    child: CircleAvatar(
                      backgroundColor: MyColor.grayColor.withAlpha(150),
                    ),
                  ),
                  Image(image: AssetImage(MyImage.hertIcon),color: MyColor.grayColor.withAlpha(150),height: 15,width: 15,),
                  const SizedBox(width: 5,),
                  Text("78 ms",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),

                ],
              )
            ],
          ),
          SizedBox(
            height: 100,
            width: 120,
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
                          Colors.transparent
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
