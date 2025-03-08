import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class ErrorPageFour extends StatelessWidget {
  const ErrorPageFour({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(50),
                    ),
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Image(
                image: AssetImage(MyImage.maintanence),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20,),
            Text("Maintenance",style: regularTextStyle24.copyWith(fontSize: 24),),
            const SizedBox(height: 10,),
            Text("We have undergoing Maintenance ",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
            const SizedBox(height: 20,),
            Container(
              width: 260,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.redColor.withAlpha(30),
                border: Border.all(color: MyColor.redColor)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(MyImage.warningIcon,colorFilter: ColorFilter.mode(MyColor.redColor, BlendMode.srcIn),height: 20,),
                  const SizedBox(width: 10,),
                  Text("Come back in 8h 30min",style: regularTextStyle24.copyWith(fontSize: 16),)
                ],
              )
            ),
            const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, RouteHelper.errorPageFive);
                },
                style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all(MyColor.splashBacColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Take Me Home",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(MyImage.homeIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
