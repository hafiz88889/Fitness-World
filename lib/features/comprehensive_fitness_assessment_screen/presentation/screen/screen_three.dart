import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Assessment",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.splashBacColorTwo.withAlpha(30)),
                  child: Text(
                    "3 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo,fontSize: 14),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50,),
            Text(
              "What is your weight?",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(
                  fontSize: 30),
            ),
            const SizedBox(height: 65,),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: MyColor.splashBacColorTwo,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelColor: MyColor.whiteColor,
              unselectedLabelColor: MyColor.grayColor,
              tabs: [
                Text("kg"),
                Text("ibs"),
              ],
            ),
            TabBarView(children: [
              ScreenOne(),
              ScreenOne(),
            ]),

            const SizedBox(height: 50,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, RouteHelper.passwordSentScreen);
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
                    SvgPicture.asset(MyImage.arrowRight,)
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
