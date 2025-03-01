import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class VirtualFitnessPageThirteen extends StatelessWidget {
  const VirtualFitnessPageThirteen({super.key});

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

       
          const Spacer(),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: MyColor.greenColor),
              color: MyColor.greenColor.withAlpha(20)
            ),
            child: Row(
              children: [
                SvgPicture.asset(MyImage.joggingIcon,colorFilter: ColorFilter.mode(MyColor.greenColor, BlendMode.srcIn),height: 25,width: 25,),
                const SizedBox(width: 15,),
                Text("Activity All to Jogging in Chatting",style: regularTextStyle18,)
              ],
            ),
          ),
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
                    Navigator.pushNamed(context, RouteHelper.virtualFitnessPageFourteen);
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
