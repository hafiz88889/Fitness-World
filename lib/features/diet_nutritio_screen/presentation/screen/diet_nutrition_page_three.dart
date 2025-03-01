import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietNutritionPageThree extends StatefulWidget {
  const DietNutritionPageThree({super.key});

  @override
  State<DietNutritionPageThree> createState() => _DietNutritionPageThreeState();
}
class _DietNutritionPageThreeState extends State<DietNutritionPageThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  "Calorie Intake",
                  style: regularTextStyle24.copyWith(fontSize: 24),
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
                  child: Text("1,745",style: regularTextStyle24.copyWith(fontSize: 80),)),
              const SizedBox(width: 10,),
              Text("kcal",style: regularTextStyle24.copyWith(fontSize: 40,color: MyColor.grayColor),),
            ],
          ),
          Text("Eat 158 Calorie Left",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.grayColor),),
    const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteHelper.dietNutritionPageFour);
            },
            child: Container(
              width: 180,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.borderColor,
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(MyImage.calenderIcon),
                    height: 15,
                    width: 15,
                    color: MyColor.blackColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Total Duration",
                    style: regularTextStyle18.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Transform.rotate(
                      angle: -1.5, child: SvgPicture.asset(MyImage.backIcon))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:     Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
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
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: MyColor.whiteColor
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(MyImage.cardioIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),height: 25,width: 25,),
                          const SizedBox(height: 10,),
                          Text("125g",style: regularTextStyle24.copyWith(fontSize: 24),),
                          Text("Carbs",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(MyImage.joggingIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),height: 25,width: 25,),
                          const SizedBox(height: 10,),
                          Text("15g",style: regularTextStyle24.copyWith(fontSize: 24),),
                          Text("Protein",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 25,width: 25,),
                          const SizedBox(height: 10,),
                          Text("5g",style: regularTextStyle24.copyWith(fontSize: 24),),
                          Text("Fat",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
                        ],
                      ),
                    ],
                  )
              ),
            ),
          ],

        ),
      ),
    );
  }
}
