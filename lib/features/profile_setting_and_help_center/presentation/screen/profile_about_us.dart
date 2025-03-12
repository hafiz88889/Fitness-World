import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileAboutUs extends StatelessWidget {
  const ProfileAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter:
                      ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Text(
                  "About Us",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.blackColor, fontSize: 24),
                ),
              ],
            ),
       const SizedBox(height: 150,),
       SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),),
            const SizedBox(height: 15,),
            Text("Sandow.ai",style: regularTextStyle24.copyWith(fontSize: 30),),
            Text("AI Fitness & Training Center",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.blackColor.withAlpha(150)),),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.borderColor,
              ),
              child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage(MyImage.locationIcon),height: 25,),
                      const SizedBox(width: 8,),
                      Text("Address",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Text("578 Bollean Ave \n Turing st\nNew York NY",textAlign: TextAlign.end,style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.borderColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                SvgPicture.asset(MyImage.five),
                      const SizedBox(width: 8,),
                      Text("Telephone",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Text("+123-456-789\n +123-456-789",textAlign: TextAlign.end,style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SvgPicture.asset(MyImage.facebookIcon,height: 40,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                const SizedBox(width: 20,),
                SvgPicture.asset(MyImage.instraIcon,height: 40,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                const SizedBox(width: 20,),
                SvgPicture.asset(MyImage.linkDinIcon,height: 40,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                const SizedBox(width: 20,),
                SvgPicture.asset(MyImage.facebookIcon,height: 40,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
              ],
            )
          ],
        ),
      )),
    );
  }
}
