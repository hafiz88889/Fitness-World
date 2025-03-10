import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';

class PageOneTabbarviewOne extends StatefulWidget {
  const PageOneTabbarviewOne({super.key});

  @override
  State<PageOneTabbarviewOne> createState() => _PageOneTabbarviewOneState();
}

class _PageOneTabbarviewOneState extends State<PageOneTabbarviewOne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Earlier Today",style: regularTextStyle24.copyWith(fontSize: 22),),
                Expanded(child: Text("(8)",style: regularTextStyle24.copyWith(fontSize: 22,color: MyColor.grayColor.withAlpha(150)),)),
                Image(image: AssetImage(MyImage.threeDotMenuIcon,),color: MyColor.grayColor,height: 25,)
              ],
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.notificationPageTwo);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.borderColor
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.grayColor
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image(image: AssetImage(MyImage.messageIcon),color: MyColor.whiteColor,height: 30,),
                          Positioned(
                            right: 0,
                            bottom: 8,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color:MyColor.grayColor,width: 2),
                                color: MyColor.splashBacColor,
                              ),
                              child: Text("8",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.whiteColor),),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Unread AI Chatbot Message",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                        Text("8 new message from Sandow ai!",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.splashBacColor
                      ),
                      child: SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Score Increase",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                        Text("Sandow Score is no 87",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.grayColor.withAlpha(50)
                    ),
                    child: Text("+8",style: regularTextStyle24.copyWith(color: MyColor.blackColor.withAlpha(150)),),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.splashBacColorTwo
                      ),
                      child:SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,)
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Drink more water!",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                      LinearPercentIndicator(
                        animation: true,
                        alignment: MainAxisAlignment.center,
                        barRadius: const Radius.circular(20),
                        padding: const EdgeInsets.all(1),
                        width: 230.0,
                        lineHeight: 12.0,
                        percent: 0.5,
                        backgroundColor: MyColor.grayColor.withAlpha(50),
                        progressColor: MyColor.splashBacColorTwo,
                      ),
                      Text("You need to drink 1500ml left",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.greenColor
                      ),
                      child: SvgPicture.asset(MyImage.weightLiftIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Score Increase",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                        Text("Sandow Score is no 87",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                      ],
                    ),
                  ),
                  Checkbox(
                      activeColor: MyColor.blackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)
                      ),
                      value: isSelect, onChanged: (value){
                    setState(() {
                      isSelect=value!;
                    });
                  })
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.beguniColor
                      ),
                      child: SvgPicture.asset(MyImage.tradionalIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Score Increase",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                        Text("Sandow Score is no 87",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: CircularProgressIndicator(
                          value: 0.3,
                          backgroundColor: MyColor.grayColor.withAlpha(100),
                          strokeWidth: 12,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              MyColor.beguniColor),
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: 15,
                          child: Text(
                            "30%",
                            style: regularTextStyle24.copyWith(fontSize: 12),
                          ))
                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: MyColor.redColor
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image(image: AssetImage(MyImage.messageIcon),color: MyColor.whiteColor,height: 30,),
                        Positioned(
                          right: 0,
                          bottom: 8,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:MyColor.grayColor,width: 2),
                              color: MyColor.splashBacColor,
                            ),
                            child: Text("8",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.whiteColor),),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fitness Data Ready",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                      Text("Here Fitness Data for November",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                      const SizedBox(height: 8,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.blackColor)
                        ),
                        child: Row(
                          children: [
                            Text("Fitness_data_Nov.rr",style: regularTextStyle24,),
                            const SizedBox(width: 10,),
                            Image(image: AssetImage(MyImage.downloadIcon),color: MyColor.blackColor,height: 20,)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
  bool isSelect=false;

}
