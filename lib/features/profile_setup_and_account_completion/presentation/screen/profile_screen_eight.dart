import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileScreenEight extends StatelessWidget {
  const ProfileScreenEight({super.key});

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
              image: AssetImage(MyImage.modelIcon),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.profileScreenNine);
                  },
                  child: SvgPicture.asset(MyImage.backGroundFullPlus,height: 50,width: 50,))),
              const SizedBox(height: 30,),
              Text(
                "Generating Score",
                style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),
              ),
              const SizedBox(height: 10,),
              Text(
                "Please wait...We're calculating the data based on your asessment",textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(color: MyColor.whiteColor,),
              ),
              const SizedBox(height: 100,)
            ],
          ),
        ],
      ),
    );
  }
}
