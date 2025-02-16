import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AiSuggest extends StatelessWidget {
  const AiSuggest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(image: AssetImage(MyImage.bodyImage),fit: BoxFit.cover)
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text("Take Less \nBreaks!",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),),
              const Spacer(),
              Row(
                children: [
                  SvgPicture.asset(MyImage.fireIcon),
                  Text("48+ Suggestions",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                ],
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteHelper.homeScreenEleven);
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColor.splashBacColor,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 4,
                      color: MyColor.splashBacColor.withAlpha(100)
                  )
                ],
              ),
              child: SvgPicture.asset(MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
            ),
          ),
        ],
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Row(
      //       children: [
      //         SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),),
      //         const SizedBox(width: 4,),
      //         Text("25 min",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor.withAlpha(200)),),
      //         SizedBox(
      //           height: 8,
      //           child: CircleAvatar(
      //             backgroundColor: MyColor.whiteColor.withAlpha(200),
      //           ),
      //         ),
      //         SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn)),
      //         const SizedBox(width: 4,),
      //         Text("412 kcal",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),)
      //       ],
      //     ),
      //     const Spacer(),
      //     Text("Upper Strength 2",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),),
      //     Row(
      //       children: [
      //         Text("8 Series workout ",style: regularTextStyle18.copyWith(color: MyColor.borderColor.withAlpha(200),),),
      //         Container(
      //           padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(8),
      //               color: MyColor.grayColor.withAlpha(250)
      //           ),
      //           child: Text("Intense",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
      //         ),
      //         const Spacer(),

      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
