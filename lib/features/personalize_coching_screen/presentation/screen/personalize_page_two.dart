import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PersonalizePageTwo extends StatelessWidget {
  const PersonalizePageTwo({super.key});

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
                  colors: [Colors.transparent, MyColor.blackColor],
                ).createShader(bounds);
              },
              blendMode: BlendMode.darken,
              child: Image(
                image: AssetImage(MyImage.basketBall),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             GestureDetector(
                 onTap: (){
                 Navigator.pushNamed(context, RouteHelper.personalizePageThree);
                 },
                 child: SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 50,width: 50,)),
              const SizedBox(height: 20,),
              Text(
                "Finding Fitness Couch...",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                  fontSize: 30,color: MyColor.whiteColor),
              ),
              const SizedBox(height: 20,),
              LinearPercentIndicator(
                animation: true,
                alignment: MainAxisAlignment.center,
                barRadius: const Radius.circular(20),
                padding: const EdgeInsets.all(1),
                width: 280.0,
                lineHeight: 10.0,
                percent: 0.7,
                backgroundColor: MyColor.whiteColor.withAlpha(150),
                progressColor: MyColor.whiteColor,
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}
