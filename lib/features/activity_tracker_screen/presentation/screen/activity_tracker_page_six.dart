import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerPageSix extends StatefulWidget {
  const ActivityTrackerPageSix({super.key});

  @override
  State<ActivityTrackerPageSix> createState() => _ActivityTrackerPageSixState();
}
class _ActivityTrackerPageSixState extends State<ActivityTrackerPageSix> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
          ShaderMask(shaderCallback: (Rect bound){
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent,MyColor.whiteColor]
            ).createShader(bound);
          },
            blendMode: BlendMode.darken,
            child:  Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(MyImage.mapImage),fit: BoxFit.cover)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.whiteColor,
                            ),
                            child: SvgPicture.asset(MyImage.backIcon),
                          ),
                        ),
                        Text(
                          "Jogging",
                          style: regularTextStyle24.copyWith(fontSize: 20),
                        ),
                        Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.whiteColor,
                            ),
                            child: SvgPicture.asset(MyImage.settingIcn)
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text("45:20",style: regularTextStyle24.copyWith(fontSize: 80),),
                    Text("Total Duration",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                    const SizedBox(height: 20,),
                    SvgPicture.asset(MyImage.fireIcon,colorFilter:ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn) ,height: 40,width: 40,),
                    Text("548",style: regularTextStyle24.copyWith(fontSize: 24),),
                    Text("kcal",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image(image: AssetImage(MyImage.locationIcon),height: 30,width: 30,color: MyColor.splashBacColorTwo,),
                            Text("1.25",style: regularTextStyle24.copyWith(fontSize: 24),),
                            Text("km",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, RouteHelper.activityTrackerPageSeven);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.blackColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.blackColor.withAlpha(150),
                                    spreadRadius: 4,
                                  )
                                ]
                            ),
                            child: Image(image: AssetImage(MyImage.pauseIcon),height: 30,width: 30,color: MyColor.whiteColor,),
                          ),
                        ),
                        Column(
                          children: [
                            Image(image: AssetImage(MyImage.hertIcon),height: 30,width: 30,color: MyColor.redColor,),
                            Text("79",style: regularTextStyle24.copyWith(fontSize: 24),),
                            Text("bpm",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

              ),
            ),
          ),
        ],
      )

    );
  }
}
