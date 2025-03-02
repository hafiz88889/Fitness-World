import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalizePageOne extends StatelessWidget {
  const PersonalizePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
              shaderCallback: (Rect bounds) {
                return  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, MyColor.whiteColor],
                ).createShader(bounds);
              },
              blendMode: BlendMode.lighten,
              child: Image(
                image: AssetImage(MyImage.robotImageTwo),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          Positioned(
            top: 150,
            left: 30,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.blackColor
              ),
              child: Row(
                children: [
                  SvgPicture.asset(MyImage.warningIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,),
                  const SizedBox(width: 8,),
                  Text("Get Up Now",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),)
                ],
              )
            ),
          ),
          Positioned(
            top: 500,
            left: 30,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.blackColor
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,),
                    const SizedBox(width: 8,),
                    Text("Do 588 Reps!",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),)
                  ],
                )
            ),
          ),
          Positioned(
            top: 350,
            right: 30,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.blackColor
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(MyImage.joggingIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,),
                    const SizedBox(width: 8,),
                    Text("Wrong Form!",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),)
                  ],
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 420,
              ),
              Text(
                "Meet Your AI Fitness Couch",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                  fontSize: 36,color: MyColor.blackColor),
              ),
              const SizedBox(height: 10,),
              Text(
                "Elevate you Training with AI Fitness Couch",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16,
                    color: MyColor.blackColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.personalizePageTwo);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.splashBacColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Find Fitness Couch",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.searchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
