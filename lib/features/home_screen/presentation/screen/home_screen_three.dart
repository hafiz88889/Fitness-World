import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenThree extends StatelessWidget {
  const HomeScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
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
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: SvgPicture.asset(MyImage.backIcon),
                ),
              ),
              Text(
                "Heart Rate",
                style: regularTextStyle24.copyWith(fontSize: 20),
              ),
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
                  child: SvgPicture.asset(MyImage.settingIcn),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(MyImage.hertIcon,),height: 25,width: 25,color: MyColor.redColor,),
              const SizedBox(width: 10,),
              Text("112",style: regularTextStyle24.copyWith(fontSize: 80),),
              const SizedBox(width: 10,),
              Text("bpm",style: regularTextStyle24.copyWith(fontSize: 40,color: MyColor.grayColor),),
            ],
          ),
          Text("Currently doing Boxing",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.grayColor),),

          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImage.gymLadyTwo),fit: BoxFit.cover)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pushNamed(context, RouteHelper.homeScreenFour);
          },
                  child: Container(
                    height:66,
                    width: 66,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.blackColor,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 5,
                          color: MyColor.blackColor.withAlpha(50)
                        )
                      ]
                    ),
                    child: SvgPicture.asset(MyImage.addIcon),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: MyColor.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: MyColor.grayColor
                            )
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pressure",style: regularTextStyle18,),
                              SvgPicture.asset(MyImage.four,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("112",style: regularTextStyle24.copyWith(fontSize: 24),),
                              Text("mmHg",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),

                            ],
                          ),
                          const SizedBox(width: 10,),
                        ],
                      ),
                    )),
                    const SizedBox(width: 15,),
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: MyColor.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: MyColor.grayColor
                              )
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Oxygen",style: regularTextStyle18,),
                                  SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("95",style: regularTextStyle24.copyWith(fontSize: 24),),
                                  Text("SpO2",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),

                                ],
                              ),
                              const SizedBox(width: 10,),
                            ],
                          ),
                        ),
                    ),
                  ],
                ) ,
                const SizedBox(height: 20,),
              ],
            ),
          )
        ],
      ),
      ),
    );
  }
}
