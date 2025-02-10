import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/social_media_widget.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(MyImage.assesMent),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: MyColor.splashBacColor),
                    child: SvgPicture.asset(MyImage.backGroundFullPlus),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Sign up for free",
                    style: regularTextStyle24.copyWith(
                        fontSize: 30, color: MyColor.whiteColor),
                  ),
                  Text(
                    "Quickly make your account in 1 minute",
                    style: regularTextStyle18.copyWith(
                        fontSize: 16, color: MyColor.whiteColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GlobalTextFieldWidget(
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.emailIcon),
              ),
              title: "Email address",
              hintText: "elementary221b@gmail.co|",
            ),
            GlobalTextFieldWidget(
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.lockIcon),
              ),
              suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.visibilityIcon),
              ),
              title: "Password",
              hintText: "**********",
            ),
            GlobalTextFieldWidget(
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.lockIcon),
              ),
              suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.visibilityIcon),
              ),
              title: "Confirm Password",
              hintText: "elementary221|",
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side: BorderSide(color: MyColor.redColor)),
                        content: Row(
                          children: [
                            SvgPicture.asset(MyImage.warningIcon),
                            const SizedBox(width: 10,),
                            Text(
                              'Error: Passwords do not match!',
                              style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 14),
                            ),
                          ],
                        ),
                        backgroundColor: MyColor.splashBacColor.withAlpha(150), // Snackbar background color
                        behavior: SnackBarBehavior.floating, // Floating Snackbar
                       // Margin for the Snackbar
                      ),
                    );
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
                        "Sign Up",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.whiteColor, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(MyImage.arrowRight)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                  text: TextSpan(
                      text: "Already have an account ?",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.grayColor, fontSize: 14),
                      children: [
                        TextSpan(
                            text: " Sign In.",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.splashBacColor, fontSize: 14,
                                decoration: TextDecoration.underline,
                                decorationColor: MyColor.splashBacColor
                            ))
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
