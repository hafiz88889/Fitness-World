import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VirtualFitnessPageOne extends StatelessWidget {
  const VirtualFitnessPageOne({super.key});

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
                image: AssetImage(MyImage.robotImageTwo),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 420,
              ),
              Text(
                "Talk Personal AI Fitness Talk",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                  fontSize: 36,color: MyColor.whiteColor),
              ),
              const SizedBox(height: 10,),
              Text(
                "Elevent you personal fitness game with a personal ai chatbot",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16,
                    color: MyColor.whiteColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwo);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.whiteColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create New Conversation",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.blackColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),
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
