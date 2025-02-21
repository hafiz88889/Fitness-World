import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ActivityScreenPageFourteen extends StatefulWidget {
  const ActivityScreenPageFourteen({super.key});

  @override
  State<ActivityScreenPageFourteen> createState() => _ActivityScreenPageFourteenState();
}
class _ActivityScreenPageFourteenState extends State<ActivityScreenPageFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
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
              height: 35,
            ),
            Center(child: SvgPicture.asset(MyImage.weightLiftIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),)),
            const SizedBox(height: 10,),
            Center(
              child: Text(
                "Weightlifting...",textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "14:22",textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 80),
              ),
            ),
            Center(
              child: Text(
                "8x reps left",textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 20,color: MyColor.grayColor),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image(image: AssetImage(MyImage.experianeImage)),
            const Spacer(),
            SlideAction(
              onSubmit: () {
                Navigator.pushNamed(context, RouteHelper.activityPageFifteen);
                return null;
              },
              outerColor:MyColor.blackColor,
              sliderButtonIcon:SvgPicture.asset(MyImage.backIcon),
              sliderButtonIconPadding: 8,
              text: "Swipe to Finish activity",
              textStyle:regularTextStyle18.copyWith(color: MyColor.whiteColor),
              elevation: 4,
              borderRadius: 12,

            ),
          ],
        ),
      ),
    );
  }
}
