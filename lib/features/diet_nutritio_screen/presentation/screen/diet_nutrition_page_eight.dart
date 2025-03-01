import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DietNutritionPageEight extends StatelessWidget {
  const DietNutritionPageEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.borderColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(MyImage.orangeImage),fit: BoxFit.contain)
              ),
          ),
          Positioned(
            top: 450,
            left: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.blackColor
              ),
              child: Text("Move Up",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 380,
            right: 60,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.blackColor
              ),
              child: Text("Bend",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 550,
            left: 50,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.blackColor
              ),
              child: Text("Use Core",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 520,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.blackColor
              ),
              child: Text("Bend 3X",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.whiteColor),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter: ColorFilter.mode(
                          MyColor.grayColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                Text("Food Analysis",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.whiteColor),
                  child: SvgPicture.asset(
                    MyImage.settingIcn,
                    colorFilter: ColorFilter.mode(
                        MyColor.grayColor, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: MyColor.whiteColor
                    ),
                    child: Row(
            children: [
              Container(
                height:66,
                  width: 66,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(MyImage.orangeImageTwo),fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(22),
                  ),
                 ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mandarin Orange",
                    style: regularTextStyle24.copyWith(fontSize: 16),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset(MyImage.fireIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.splashBacColor, BlendMode.srcIn),),
                      Text("645kcal", style: regularTextStyle18.copyWith(
                        fontSize: 14,),),
                      const SizedBox(width: 20,),
                      SvgPicture.asset(MyImage.watchIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.splashBacColorTwo, BlendMode.srcIn),),
                      Text("3Type", style: regularTextStyle18.copyWith(
                        fontSize: 14,),),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.dietNutritionPageNine);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.blackColor
                  ),
                  child: SvgPicture.asset(MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                ),
              ),
            ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
