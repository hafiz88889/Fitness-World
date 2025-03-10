import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';


class NotificationPageFour extends StatelessWidget {
  const NotificationPageFour({super.key});

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
                colors: [Colors.transparent, Colors.black.withAlpha(250)],
              ).createShader(bounds);
            },
            blendMode: BlendMode.darken,
            child: Image(
              image: AssetImage(MyImage.ladyImageOne),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("+1,121",style: regularTextStyle24.copyWith(fontSize: 80,color: MyColor.whiteColor),),
              Text(
                "Step Taken",
                style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),
              ),
              const SizedBox(height: 10,),
              Text(
                "You Steel need to complete your\n day Do it now",textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(color: MyColor.whiteColor,),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.notificationPageFive);
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
                          "See Step taken",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}
