import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerPageTenWidget extends StatelessWidget {
  final String image;
  final String icon;
  final String iconText;
  final String title1;
  final String time;
  final String calorie;
  const ActivityTrackerPageTenWidget({super.key,
  required this.image,
  required this.icon,
  required this.iconText,
  required this.title1,
  required this.time,
  required this.calorie,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          ShaderMask(
              shaderCallback:(Rect bound){
                return LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent,MyColor.whiteColor]
                ).createShader(bound);
              },
            blendMode: BlendMode.darken,
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(10),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.grayColor.withAlpha(120)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(icon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,width: 20,),
                        Text(iconText,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title1,style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 30),),
                          Row(
                            children: [
                              SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                              const SizedBox(width: 5),
                              Text(time,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                              const SizedBox(width: 30,),
                              SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                              const SizedBox(width: 5),
                              Text(calorie,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),)
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RouteHelper.homeScreenTwelve);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.splashBacColor,
                          ),
                          child: SvgPicture.asset(MyImage.arrowRight),
                        ),
                      )

                    ],
                  ),

                ],
              ),
            ),
              )
        ],
      )
    );
  }
}
