import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/my_image.dart';

class TabbarViewWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String logo;
  final String title2;
  final String title3;
  final String title4;
  const TabbarViewWidget({super.key,
  required this.image,
  required this.title1,
  required this.logo,
  required this.title2,
  required this.title3,
  required this.title4,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect bound) {
            return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  MyColor.whiteColor,
                ]).createShader(bound);
          },
          blendMode: BlendMode.lighten,
          child: Image(
            image: AssetImage(image),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 80,
          left: 20,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: MyColor.redColor
            ),
            child: Image(image: AssetImage(MyImage.hertIcon),height: 25,color: MyColor.whiteColor,),
          ),
        ),
        Positioned(
          top: 80,
          right: 20,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: MyColor.splashBacColorTwo
            ),
            child: Image(image: AssetImage(MyImage.calenderIcon),height: 25,color: MyColor.whiteColor,),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.splashBacColor,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.splashBacColor.withAlpha(100),
                    spreadRadius: 4
                  )
                ]
              ),
              child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
            ),
            const SizedBox(height: 15,),
            Text(title1,style: regularTextStyle24.copyWith(fontSize:36),),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(logo,height: 25,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                const SizedBox(width: 5,),
                Text(title2,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
                const SizedBox(width: 20,),
                Image(image: AssetImage(MyImage.star,),height: 25,width: 25,color: MyColor.orangeColor,),
                const SizedBox(width: 5,),
                Text(title3,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
                const SizedBox(width: 20,),
               Image(image: AssetImage(MyImage.userIconTwo),height: 25,color: MyColor.splashBacColorTwo,),
                const SizedBox(width: 5,),
                Text(title4,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
              ],
            ),
            const SizedBox(height: 50,)
          ],
        )
      ],
    );
  }
}
