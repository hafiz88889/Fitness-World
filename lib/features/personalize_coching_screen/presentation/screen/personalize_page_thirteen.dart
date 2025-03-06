import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/convestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class PersonalizePageThirteen extends StatelessWidget {
  const PersonalizePageThirteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),
        backgroundColor: MyColor.whiteColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Farnese Vandimion",style: regularTextStyle24,),
                    Text("Human Couch   Certified",style: regularTextStyle18.copyWith(color: MyColor.grayColor),),
                  ],
                ),
              ),
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
      ),
      backgroundColor: MyColor.whiteColor.withAlpha(220),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(width: 10,),
                  buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: false, time: "12:30", index: 7, totalMessages: 8),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: true, time: "12:30", index: 0, totalMessages: 2),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: true, time: "12:30", index: 0, totalMessages: 2),
                  buildMessageItem("How are you How are you How are you How are you How are you How are you  How areHow are you How are you How are you  How are How are you How are you How are", isSent: false, time: "12:30", index: 7, totalMessages: 8),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: false, time: "12:30", index: 7, totalMessages: 8),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: false, time: "12:30", index: 7, totalMessages: 8),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: false, time: "12:30", index: 7, totalMessages: 8),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: true, time: "12:30", index: 0, totalMessages: 2),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: true, time: "12:30", index: 0, totalMessages: 2),
                  buildMessageItem("How are you How are you How are you  How are you How are you How are", isSent: true, time: "12:30", index: 0, totalMessages: 2),
                      ],
                    ),
            ),
          ),
      ),
bottomNavigationBar:  Container(
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
          Navigator.pushNamed(context, RouteHelper.personalizePageFourteen);
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
    );
  }
}
