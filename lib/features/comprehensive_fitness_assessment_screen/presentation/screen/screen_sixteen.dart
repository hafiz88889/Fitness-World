import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenSixteen extends StatefulWidget {
  const ScreenSixteen({super.key});

  @override
  State<ScreenSixteen> createState() => _ScreenSixteenState();
}
class _ScreenSixteenState extends State<ScreenSixteen> {
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
                    "16 of 17",
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
              "AI Vocal Analysis",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 10,),
            Text(
              "Your voice is connected to your health. Say the following for better assessment. 🙌",textAlign: TextAlign.center,
              style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
            ),
            const SizedBox(
              height: 50,
            ),
            Image(image: AssetImage(MyImage.voiceImage)),
            const Spacer(),
            RichText(text: TextSpan(
              text: "If there’s",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 30,backgroundColor: MyColor.splashBacColor),
              children: [
                TextSpan(
                  text: " no pain, then there’s always no gain.",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 30,backgroundColor: MyColor.whiteColor)
                )
              ]
            )),
            const SizedBox(height: 30,),
            //const Spacer(),
            SizedBox(
              height: 56,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, RouteHelper.screenEighteen);
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.blackColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor,),),
                      const SizedBox(width: 10,),
                      SvgPicture.asset(MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
