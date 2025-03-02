import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class DietNutritionPageTen extends StatelessWidget {
  const DietNutritionPageTen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35,left: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.grayColor.withAlpha(100)),
                child: SvgPicture.asset(
                  MyImage.backIcon,
                  colorFilter: ColorFilter.mode(
                      MyColor.grayColor, BlendMode.srcIn),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Image(image: AssetImage(MyImage.plateImageFive),height: 350,width: double.infinity,fit: BoxFit.cover,),
          const SizedBox(height: 50,),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.splashBacColor.withAlpha(40),
              ),
              child: Text("Salad & Vegetables",style: regularTextStyle24.copyWith(color: MyColor.splashBacColor),),
            ),
          ),
          const SizedBox(height: 30,),
          Text("North Texas Salad With Nutmeg & Radish",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(fontSize: 30),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),height: 30,),
              const SizedBox(width: 8,),
              Text("30min",style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
              const SizedBox(width: 25,),
              SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),height: 25,),
              const SizedBox(width: 8,),
              Text("215kcal",style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
            ],
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.dietNutritionPageEleven);
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
                      "See Details",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
