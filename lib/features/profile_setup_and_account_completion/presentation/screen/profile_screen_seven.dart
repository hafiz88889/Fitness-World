
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/profile_setup_and_account_completion/presentation/widget/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenSeven extends StatefulWidget {
  const ProfileScreenSeven({super.key});

  @override
  State<ProfileScreenSeven> createState() => _ProfileScreenSevenState();
}
bool isSelect=false;
class _ProfileScreenSevenState extends State<ProfileScreenSeven> {
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
                  "Notification Setup",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          Image(image: AssetImage(MyImage.bellImage)),

            SwitchWidget(image: MyImage.emojiIconOne, title: "AI Coach", color: MyColor.splashBacColor),
            SwitchWidget(image: MyImage.weightLiftIcon, title: "Personalize and Fitness", color: MyColor.splashBacColorTwo),
            SwitchWidget(image: MyImage.emojiIconOne, title: "Nutrition and Diet", color: MyColor.splashBacColor),
            const Spacer(),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RouteHelper.profileScreenEight);
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
