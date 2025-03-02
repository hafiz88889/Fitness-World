import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietNutritionPageTwelve extends StatelessWidget {
  const DietNutritionPageTwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImage.plateImageSeven),fit: BoxFit.cover)
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
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
                    child: SvgPicture.asset(MyImage.rightMark),
                  ),
                  const SizedBox(height: 32,),
                  Text("Food Added!",textAlign: TextAlign.center, style: regularTextStyle24.copyWith(fontSize: 24)),
                  Text("You have Successfully added a meal to\n your diet scheduled", textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)),
                  const SizedBox(height: 35,),
                  SizedBox(
                    width: 310,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                    Navigator.pushNamed(context, RouteHelper.personalizePageOne);
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
                            "Great Thanks!",
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
          ),
          Positioned(
            bottom: 50,
            left: 165,
            right: 165,
            child: InkWell(
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
          )
        ],
      ),
    );
  }
}
