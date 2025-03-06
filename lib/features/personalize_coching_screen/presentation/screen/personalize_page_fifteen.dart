import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalizePageFifteen extends StatelessWidget {
  const PersonalizePageFifteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImage.gymLadyTwo),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColor.whiteColor
              ),
              child: Column(
                children: [
                  Container(
                      height:64,
                      width: 64,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green.withAlpha(30)
                      ),
                      child: SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.greenColor, BlendMode.srcIn),height: 25,)
                  ),
                  const SizedBox(height: 32,),
                  Text("Review Submitted",textAlign: TextAlign.center, style: regularTextStyle24.copyWith(fontSize: 24)),
                  const SizedBox(height: 10,),
                  Text("Your Review Successfully Submitted\n To our System Thank you for review", textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)),
                  const SizedBox(height: 35,),
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.searchPageOne);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          WidgetStateProperty.all(MyColor.splashBacColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Greats Thanks",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 150,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.whiteColor
                ),
                child: SvgPicture.asset(MyImage.closeIcon),
              ),
            ),
            const SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
