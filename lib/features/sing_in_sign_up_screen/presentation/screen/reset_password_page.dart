import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/reset_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              InkWell(
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
                height: 24,
              ),
              Text(
                "Reset Password",
                style: regularTextStyle24.copyWith(fontSize: 30),
              ),
              Text(
                "Select what method you’d like to reset.",
                style: regularTextStyle18.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(
                height: 32,
              ),
              ResetPasswordWidget(
                  color: MyColor.splashBacColor,
                  image: MyImage.emailIcon,
                  title: "Send Via Email",
                  title1: "Seamlessly reset your \npassword via email address.",
              ),
              ResetPasswordWidget(
                color: MyColor.splashBacColorTwo,
                image: MyImage.lockIcon,
                title: "Send via 2FA",
                title1: "Seamlessly reset your \npassword via 2 Factors.",
              ),
              ResetPasswordWidget(
                color: MyColor.beguniColor,
                image: MyImage.emailIcon,
                title: "Send via Google Auth",
                title1: "Seamlessly reset your \npassword via gAuth.",
              ),
              const SizedBox(height: 24,),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(MyImage.lockImageHalf),fit: BoxFit.cover)
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: SizedBox(
                      width: 350,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.passwordSentScreen);
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
                              "Reset Password",
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
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
