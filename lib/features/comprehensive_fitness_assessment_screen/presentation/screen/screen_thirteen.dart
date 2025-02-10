import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class ScreenThirteen extends StatefulWidget {
  const ScreenThirteen({super.key});

  @override
  State<ScreenThirteen> createState() => _ScreenThirteenState();
}

bool isKg = false;
bool isSelect=false;
int caloriesValue = 1550;

class _ScreenThirteenState extends State<ScreenThirteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.splashBacColorTwo.withAlpha(30)),
                  child: Text(
                    "13 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "What’s Your Calorie Goal per day?",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColor.grayColor.withAlpha(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isKg = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: isKg
                                ? MyColor.blackColor
                                : Colors.transparent,
                            border: Border.all(
                                color: isKg ? MyColor.borderColor.withAlpha(150) : Colors.transparent,width: 5)),
                        child: Text(
                          "Kcal",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color: isKg
                                  ? MyColor.whiteColor
                                  : MyColor.grayColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isKg = false;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: !isKg ? MyColor.blackColor : Colors.transparent,
                            border: Border.all(
                                color: !isKg ? MyColor.borderColor.withAlpha(150) : Colors.transparent,width: 5)),
                        child: Text(
                          "Joule’s",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14,fontWeight: FontWeight.w700,
                              color: !isKg ? MyColor.whiteColor : MyColor.grayColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(caloriesValue.toString(),style: regularTextStyle24.copyWith(fontSize: 100),),
                const SizedBox(height: 30,),
                Text("calories daily",style: regularTextStyle24.copyWith(color: MyColor.blackColor.withAlpha(150)),),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isSelect=true;
                          caloriesValue--;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 112,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: isSelect?MyColor.whiteColor.withAlpha(150):Colors.transparent,width: isSelect?5:0),
                          color: isSelect?MyColor.splashBacColor:MyColor.borderColor
                        ),
                        child: SvgPicture.asset(MyImage.substractIcon,colorFilter: ColorFilter.mode(isSelect?MyColor.whiteColor:MyColor.blackColor, BlendMode.srcIn),),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                       setState(() {
                         isSelect=false;
                         caloriesValue++;
                       });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 112,
                        height: 64,
                        decoration: BoxDecoration(
                            border: Border.all(color: !isSelect?MyColor.whiteColor.withAlpha(150):Colors.transparent,width: !isSelect?5:0),
                            borderRadius: BorderRadius.circular(20),
                            color: !isSelect?MyColor.splashBacColor:MyColor.borderColor
                        ),
                        child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(!isSelect?MyColor.whiteColor:MyColor.blackColor, BlendMode.srcIn),),
                      ),
                    ),
                  ],
                )
              ],
            ),
           const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.screenFourteen);
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
                      MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
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