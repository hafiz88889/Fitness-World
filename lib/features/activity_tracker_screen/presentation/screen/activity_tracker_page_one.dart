import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ActivityTrackerPageOne extends StatelessWidget {
  const ActivityTrackerPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.white.withAlpha(250)],
                ).createShader(bounds);
              },
              blendMode: BlendMode.darken,
              child: Image(
                image: AssetImage(MyImage.walPaperTwo),
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
                "No Activities",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 36,),
              ),
              Text(
                "️You have 0 activities Crate a new one and start tracking your fitness activities",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16,
                    color: MyColor.grayColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteHelper.activityTrackerPageTwo);
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
      ),
    );
  }
}
