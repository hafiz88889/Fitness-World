import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/calorie_status_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/fat_forteen_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenEight extends StatefulWidget {
  const HomeScreenEight({super.key});

  @override
  State<HomeScreenEight> createState() => _HomeScreenEightState();
}

class _HomeScreenEightState extends State<HomeScreenEight> {
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
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Calorie Status",
                    style: regularTextStyle24.copyWith(fontSize: 30)),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor),
                  child: Row(
                    children: [
                      Image(image: AssetImage(MyImage.calenderIcon),height: 20,width: 20,color: MyColor.grayColor,),
                      Text(
                        "date",
                        style: regularTextStyle18.copyWith(
                            fontSize: 14, color: MyColor.grayColor),
                      ),
                      Transform.rotate(
                          angle: -1.5,
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.grayColor, BlendMode.srcIn),
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.homeScreenNine);
                    },
                    child: CalorieStatusWidget(title1: "20%", color: MyColor.blackColor, image: MyImage.weightLiftIcon,height: 80,)),
                const SizedBox(width: 10,),
                CalorieStatusWidget(title1: "40%", color: MyColor.splashBacColor, image: MyImage.weightLiftIcon,height: 120,),
                const SizedBox(width: 10,),
                CalorieStatusWidget(title1: "80%", color: MyColor.splashBacColorTwo, image: MyImage.resturentIcon,height: 170,),
                const SizedBox(width: 10,),
                CalorieStatusWidget(title1: "50%", color: MyColor.beguniColor, image: MyImage.leafIcon,height: 130,),
              ],
            ),
            const SizedBox(height: 30,),
             FatForteenRowWidget(title1: "Fat", title2: "201g",color: MyColor.blackColor,),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
             FatForteenRowWidget(title1: "Froten", title2: "158g",color: MyColor.splashBacColor,),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            FatForteenRowWidget(title1: "Carbs", title2: "11g",color: MyColor.splashBacColorTwo,),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            FatForteenRowWidget(title1: "Macro", title2: "5g",color: MyColor.beguniColor,),


          ],
        ),
      ),
    );
  }
}
