import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NotificationPageThree extends StatelessWidget {
  const NotificationPageThree({super.key});

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
              image: AssetImage(MyImage.blackGymManTwo),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("+8.5",style: regularTextStyle24.copyWith(fontSize: 80,color: MyColor.whiteColor),),
              Text(
                "Sandow Score Increase",
                style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),
              ),
              const SizedBox(height: 10,),
              Text(
                "You have now healther and avarage person ",textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(color: MyColor.whiteColor,),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Score Now:",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                  const SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColor.splashBacColor
                    ),
                    child: Text("88",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.notificationPageFour);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.grayColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See My Score",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                    SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,)
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
