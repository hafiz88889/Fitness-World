import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.splashBacColorTwo,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 250,),
          Stack(
            children: [
              Container(
                height:320,
                width: 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.whiteColor
                ),
              ),
              Container(
                height:150,
                width: 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.redColor.withAlpha(100)
                ),
              ),
            ],
          ),
            const SizedBox(height: 35,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.splashScreenFour);
              },
              child: Text(
                "Loading...",
                textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(
                    color: MyColor.whiteColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
