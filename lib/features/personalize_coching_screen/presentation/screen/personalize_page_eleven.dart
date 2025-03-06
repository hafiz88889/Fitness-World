import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalizePageEleven extends StatelessWidget {
  const PersonalizePageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImage.dumbleImage),fit: BoxFit.cover)
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
                      child: Image(image: AssetImage(MyImage.cartIcon),color: MyColor.greenColor,height: 20,)
                  ),
                  const SizedBox(height: 32,),
                  Text("Payment Complete!",textAlign: TextAlign.center, style: regularTextStyle24.copyWith(fontSize: 24)),
                  Text("You have Successfully Complete\n fitness couch booking we have sent\n recipe to your email. Thank you", textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)),
                  const SizedBox(height: 35,),
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.personalizePageTwelve);
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
                            "Complete",
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
