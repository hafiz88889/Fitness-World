import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WelcomeScreenThree extends StatelessWidget {
  const WelcomeScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withAlpha(250)],
                ).createShader(bounds);
              },
              blendMode: BlendMode.darken,
              child: Image(
                image: AssetImage(MyImage.welcomeImageThree),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LinearPercentIndicator(
                animation: true,
                alignment: MainAxisAlignment.center,
                barRadius: const Radius.circular(20),
                padding: const EdgeInsets.all(1),
                width: 230.0,
                lineHeight: 12.0,
                percent: 0.5,
                backgroundColor: MyColor.whiteColor.withAlpha(150),
                progressColor: MyColor.whiteColor,
              ),
              const SizedBox(
                height: 420,
              ),
              Text(
                "Extensive Workout Libraries",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 36, color: MyColor.whiteColor),
              ),
              Text(
                "Explore ~100K exercises made for you! 💪",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16,
                    color: MyColor.whiteColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 96,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: MyColor.whiteColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(MyImage.arrowLeft),
                            ),
                          ),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RouteHelper.welcomeScreenFour);
                          },
                          child: Container(
                            height: 96,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: MyColor.whiteColor),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(MyImage.rightArrowIcon),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),

    );
  }
}
