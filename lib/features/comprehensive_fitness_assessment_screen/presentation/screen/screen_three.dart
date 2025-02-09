import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

bool isKg = false;
double weight = 128;

class _ScreenThreeState extends State<ScreenThree> {
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
                    "3 of 17",
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
              "What is your weight?",
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColor.grayColor.withAlpha(150),
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
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: isKg
                                ? MyColor.splashBacColorTwo
                                : Colors.transparent,
                            border: Border.all(
                                color: isKg ? MyColor.borderColor.withAlpha(150) : Colors.transparent,width: 5)),
                        child: Text(
                          "kg",
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
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: !isKg ? MyColor.splashBacColorTwo : Colors.transparent,
                            border: Border.all(
                                color: !isKg ? MyColor.borderColor.withAlpha(150) : Colors.transparent,width: 5)),
                        child: Text(
                          "lbs",
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
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(weight.toInt().toString() ,style: regularTextStyle24.copyWith(fontSize: 65,fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                Text(
                  isKg ? 'kg' : 'lbs',
                  style:regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)
                ),
              ],
            ),
            SfRadialGauge(
              axes: <RadialAxis>[
                // Second Axis
                RadialAxis(
                  radiusFactor: 0.7,
                  startAngle: 130,
                  endAngle: 50,
                  minimum: 0,
                  maximum: 200,
                  axisLineStyle: AxisLineStyle(
                    thickness: 15,
                    color: MyColor.grayColor.withAlpha(100),
                  ),
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: 70,
                      needleColor: MyColor.splashBacColor,
                      knobStyle: KnobStyle(color: MyColor.splashBacColor),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        '128',
                        style: regularTextStyle18,
                      ),
                      positionFactor: 0.6,
                      angle: 90,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.screenFour);
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