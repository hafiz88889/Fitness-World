import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileScreenNine extends StatelessWidget {
  const ProfileScreenNine({super.key});

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
              image: AssetImage(MyImage.wallPaperImage),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 80,),
                Text(
                  "Sandow Score",
                  style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),
                ),
                const SizedBox(height: 65,),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: MyColor.whiteColor.withAlpha(50)
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Container(
                        decoration:
                        BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColor.whiteColor.withAlpha(100)
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      right: 20,
                      bottom: 20,
                      child: Container(
                        decoration:
                        BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColor.whiteColor
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 50,width: 50,),
                            const SizedBox(width: 20,),
                            Text("88",style: regularTextStyle24.copyWith(fontSize: 88),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60,),
                Text(
                  "We are a fit Individual \nready for train? Let's go",textAlign: TextAlign.center,
                  style: regularTextStyle24.copyWith(color: MyColor.whiteColor,),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor , BlendMode.srcIn),),
                    const SizedBox(width: 5,),
                    Text(
                      "2,771 kcal",textAlign: TextAlign.center,
                      style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 14),
                    ),
                    const SizedBox(width: 30,),
                    SvgPicture.asset(MyImage.emojiIconOne,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo , BlendMode.srcIn),height: 25,width: 25,),
                    const SizedBox(width: 5,),
                    Text(
                      "18 AI Suggestion ",textAlign: TextAlign.center,
                      style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: (){
                    Navigator.pushNamed(context, RouteHelper.homePageOne);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.whiteColor.withAlpha(100)),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
