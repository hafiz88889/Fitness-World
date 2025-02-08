import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenFour extends StatelessWidget {
  const SplashScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          SvgPicture.asset(MyImage.backGroundHalfPlus),
          const SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.welcomeScreenOne);
                  },
                  child: Text("98",style: regularTextStyle24.copyWith(fontSize: 96),)),
              Text("%",style: regularTextStyle24.copyWith(fontSize: 48,color: MyColor.splashBacColor),),
            ],
          ),

        ],
      ),
      bottomNavigationBar:Transform.rotate(angle: -3.15,
        child: SvgPicture.asset(MyImage.backGroundHalfPlus),
      ),
    );
  }
}
