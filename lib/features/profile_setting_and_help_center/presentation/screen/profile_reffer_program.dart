import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileRefferProgram extends StatelessWidget {
  const ProfileRefferProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 50,),
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
                  "Referral Code",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.blackColor, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(35),bottomLeft: Radius.circular(35),topRight: Radius.circular(35),bottomRight: Radius.circular(35)),
                    color: MyColor.splashBacColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Invite 3 friend",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                      const SizedBox(height: 10,),
                      Text("EMLI",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 36),),

                    ],
                  ),
                ),
          Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35),topLeft: Radius.circular(35),bottomLeft: Radius.circular(35)),
                color: MyColor.splashBacColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(",get \$30",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                const SizedBox(height: 10,),
                Text("EMNFG",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 36),),
              ],
            ),

          ),
              ],
            ),
            const SizedBox(height: 50,),
            Expanded (child: Text("Invite your Friend and in crease your \nincrease you fitness ",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 16),)),

        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: MyColor.blackColor,width: 1.5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Copy Refferal Code",style: regularTextStyle24,),
              const SizedBox(width: 10,),
              SvgPicture.asset(MyImage.copyIcon,height: 25,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),)
            ],
          ),
        ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
              //    Navigator.pushNamed(context, RouteHelper.screenThree);
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
                      "Share Refferal Code",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  Image(image: AssetImage(MyImage.shareIcon),color: MyColor.whiteColor,height: 20,)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
