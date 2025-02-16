import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenFive extends StatefulWidget {
  const HomeScreenFive({super.key});

  @override
  State<HomeScreenFive> createState() => _HomeScreenFiveState();
}
final List<Color> colors = [
  Colors.blue,
  Colors.orange.shade100,
  Colors.orange.shade200,
  Colors.orange.shade300,
  Colors.orange.shade400,
  Colors.black,
  Colors.white,
];
class _HomeScreenFiveState extends State<HomeScreenFive> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
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
                Text(
                  "BMI Index",
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
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(MyImage.hertIcon,),height: 25,width: 25,color: MyColor.redColor,),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.homeScreenSix);
                    },
                    child: Text("29.8",style: regularTextStyle24.copyWith(fontSize: 80),)),
                const SizedBox(width: 10,),
                Text("pt",style: regularTextStyle24.copyWith(fontSize: 40,color: MyColor.grayColor),),
              ],
            ),
            Text("your are Singthly overweight",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.grayColor),),
            const SizedBox(height: 30,),
            Container(
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.borderColor
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
            const SizedBox(height: 10,),
            HeatMap(
             scrollable: true,
              datasets: {

                DateTime(2024, 1, 5): 1,
                DateTime(2024, 2, 6): 5,
                DateTime(2024, 2, 7): 2,
                DateTime(2024, 2, 8): 0,
                DateTime(2024, 2, 9): 4,
              },
              colorMode: ColorMode.color,
              showColorTip: true,
              colorsets: {
                1: Colors.orange[100]!,
                2: Colors.orange[200]!,
                3: Colors.orange[300]!,
                4: Colors.orange[400]!,
                5: Colors.orange[500]!,
              },
            ),
            const Spacer(),
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
                Text("OVERHEIGHT",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
                const SizedBox(width: 30,),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.blackColor
                  ),
                ),
                const SizedBox(width: 10,),
                Text("UNDERHEIGHT",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
                const SizedBox(width: 30,),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.splashBacColorTwo
                  ),
                ),
                const SizedBox(width: 10,),
                Text("NORMAL",style: regularTextStyle18.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),

              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
