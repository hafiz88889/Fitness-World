import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietNutritonWidget extends StatelessWidget {
  const DietNutritonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      height: 250,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(MyImage.plateImage),fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55,
            width: 65,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColor.whiteColor,
            ),
            child: Column(
              children: [
                Text("25g",style: regularTextStyle24.copyWith(fontSize: 16),),
                Text("Protein",style: regularTextStyle18.copyWith(fontSize: 14),),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 55,
            width: 65,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColor.whiteColor,
            ),
            child: Column(
              children: [
                Text("17g",style: regularTextStyle24.copyWith(fontSize: 16),),
                Text("Fat",style: regularTextStyle18.copyWith(fontSize: 14),),
              ],
            ),
          ),
          const Spacer(),
          Text("Salad & Egg",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 30),),
          Row(
            children: [
              SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(200), BlendMode.srcIn),),
              const SizedBox(width: 4,),
              Text("412 kcal",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor.withAlpha(200)),),
              SizedBox(
                height: 8,
                child: CircleAvatar(
                  backgroundColor: MyColor.grayColor.withAlpha(200),
                ),
              ),
              SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(200), BlendMode.srcIn)),
              const SizedBox(width: 4,),
              Text("25 min",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor.withAlpha(200)),),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColor,
                ),
                child: SvgPicture.asset(MyImage.arrowRight),
              )
            ],
          ),

        ],
      ),
    );
  }
}
