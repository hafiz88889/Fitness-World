import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class VirtualFitnessPageSix extends StatelessWidget {
  const VirtualFitnessPageSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor.withAlpha(220),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              color: MyColor.whiteColor,
            ),
            child:  Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(70),
                    ),
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Coach Sandow AI",style: regularTextStyle24,),
                    Text("251 Chat Left    GPT-4",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                  ],
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(70),
                    ),
                    child: SvgPicture.asset(MyImage.settingIcn)),
              ],
            ),
          ),
          const SizedBox(height: 250,),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColor.splashBacColor
            ),
            child: SvgPicture.asset(MyImage.warningIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
          ),
          const SizedBox(height: 20,),
          Text("Limitations",style: regularTextStyle24.copyWith(fontSize: 24),),
          const SizedBox(height: 20,),
          Text("No Chatting is Perfect Just use human\n being sandow ai Chatbot knowladge is\n limited to 2025",textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.blackColor
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.grayColor.withAlpha(100)
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.grayColor.withAlpha(100)
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.grayColor.withAlpha(100)
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.grayColor.withAlpha(100)
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                color: MyColor.whiteColor
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.transparent)
                      ),
                      filled: true,
                      hintText: "Type to Start Chatting...",
                      hintStyle: regularTextStyle18.copyWith(fontSize: 14),
                      fillColor: MyColor.grayColor.withAlpha(50),
                      prefixIcon:Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(MyImage.voiceIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),height: 20,width: 20,),
                      ),
                      suffixIcon:Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(50), BlendMode.srcIn),height: 20,width: 20,),
                      ),
                    ),
                  ),

                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.virtualFitnessPageSeven);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColorTwo
                    ),
                    child: SvgPicture.asset(MyImage.arrowRight),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
