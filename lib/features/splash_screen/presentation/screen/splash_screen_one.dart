import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.splashBacColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(MyImage.backGroundFullPlus),
          ),
          const SizedBox(height: 36,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.onBoardingScreenTwo);
              },
              child: SvgPicture.asset(MyImage.sanDowAi)),
          const SizedBox(height: 24,),
          Text("Your personal AI fitness coach.",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),)
        ],
      )
    );
  }
}
