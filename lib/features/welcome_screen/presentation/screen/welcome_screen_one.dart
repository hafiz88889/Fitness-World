import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreenOne extends StatelessWidget {
  const WelcomeScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 35),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImage.welcomeImageOne),fit: BoxFit.cover),
          gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
            colors: [
              Colors.transparent, // Fully transparent at the top
              Colors.white.withAlpha(200),
            ]
          ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(MyImage.backGroundFullPlus,height: 38,width: 38,),
            const SizedBox(height: 30,),
            Text("Welcome To sandow.ai UI Kit!",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(fontSize: 36,color: MyColor.whiteColor),),
            Text("Your personal fitness AI Assistant 🤖",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor,fontWeight: FontWeight.w400),),
            const SizedBox(height: 35,),
            SizedBox(
              height: 64,
              width: 207,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, RouteHelper.welcomeScreenTwo);
              },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.splashBacColor)
                  ),
                  child: Row(children: [
                    Text("Get Started",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontWeight: FontWeight.w600),),
                    const SizedBox(width: 16,),
                    SvgPicture.asset(MyImage.arrowRight)
                  ],)
              ),
            ),
            const SizedBox(height: 40,),
            RichText(text: TextSpan(
                text: "Already have account?",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),
                children: [
                  TextSpan(
                      text: " Sign In",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.splashBacColor)
                  )
                ]
            ))
          ],
        ),
        ),
    );
  }
}
