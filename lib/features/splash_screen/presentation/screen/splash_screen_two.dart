import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImage.backImageSplashScreenOne),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.splashScreenThree);
                },
                child: Container(
                  height: 64,
                  width: 64,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.splashBacColor),
                  child: SvgPicture.asset(MyImage.dotVector),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              Text(
                "Remember, physical fitness \ncan neither be acquired by \nwishful thinking nor by \noutright purchase",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(color: MyColor.whiteColor),
              ),
              const SizedBox(
                height: 64,
              ),
              Text(
                "— Joseph Pilates",
                textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(
                    color: MyColor.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
