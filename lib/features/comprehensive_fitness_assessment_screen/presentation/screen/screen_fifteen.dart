import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/widget/check_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ScreenFifteen extends StatefulWidget {
  const ScreenFifteen({super.key});

  @override
  State<ScreenFifteen> createState() => _ScreenFifteenState();
}
class _ScreenFifteenState extends State<ScreenFifteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
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
                  "15 of 17",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.splashBacColorTwo, fontSize: 14),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Body Analysis",
            textAlign: TextAlign.center,
            style: regularTextStyle24.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 30,),
          Text(
            "We’ll now scan your body for better assessment result. Ensure the following:",
            textAlign: TextAlign.center,
            style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
          ),
          const SizedBox(
            height: 50,
          ),
          Image(image: AssetImage(MyImage.bodyXray)),
          const SizedBox(height: 60,),
          CheckBoxWidget(title: "720p Camera"),
          CheckBoxWidget(title: "Stay Still"),
          CheckBoxWidget(title: "Good Lighting"),
        ],
      ),
      ),
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
            //  Navigator.pushNamed(context, RouteHelper.screenFour);
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
                  "Got it, lets scan",
                  style: regularTextStyle18.copyWith(
                      color: MyColor.whiteColor, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  MyImage.cameraIcon,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
