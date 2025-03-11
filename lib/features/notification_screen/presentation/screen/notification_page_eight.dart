import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NotificationPageEight extends StatelessWidget {
  const NotificationPageEight({super.key});

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
              image: AssetImage(MyImage.runningWoman),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.grayColor.withAlpha(150),
                      ),
                      child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 400,),
            Text("Jogging",style: regularTextStyle24.copyWith(fontSize: 80,color: MyColor.whiteColor),),
              Text(
                "At 05:00AM",
                style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),
              ),
              const SizedBox(height: 10,),
              Text(
                "You have Jogging Scheduling with couch farnese don't forgave to do it OK",textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(color: MyColor.whiteColor,),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context, RouteHelper.profileSettingPageOne);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.beguniColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See Activities",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      SvgPicture.asset(MyImage.joggingIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,)
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
