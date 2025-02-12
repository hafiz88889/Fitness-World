
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenSix extends StatefulWidget {
  const ProfileScreenSix({super.key});

  @override
  State<ProfileScreenSix> createState() => _ProfileScreenSixState();
}
class _ProfileScreenSixState extends State<ProfileScreenSix> {
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
                  "OTP Setup",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Fingerprint Set up ",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 10,),
            Text(
              "Scan your biometric fingerprint to make your account more secure! ",
              textAlign: TextAlign.center,
              style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
            ),
          Image(image: AssetImage(MyImage.pringerPrintImage)),
            const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, RouteHelper.passwordSentScreen);
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.elevetedBackColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "skip, thanks!",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.splashBacColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RouteHelper.profileScreenSeven);
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
