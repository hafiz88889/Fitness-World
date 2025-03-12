import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/convestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class LiveChattingBottomsheet extends StatelessWidget {
  const LiveChattingBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
        color: MyColor.borderColor.withAlpha(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         Padding(padding: EdgeInsets.all(10),
         child: Column(
           children: [
             Container(
               height: 5,
               width: 70,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: MyColor.grayColor.withAlpha(150)
               ),
             ),
             const SizedBox(height: 10,),
             buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: false, time: "12:30", index: 7, totalMessages: 8),
             buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: true, time: "12:30", index: 0, totalMessages: 2),
             buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: true, time: "12:30", index: 0, totalMessages: 2),
             buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: false, time: "12:30", index: 7, totalMessages: 8),
             buildMessageItem("How are you How are you  How are you How are you How are you  ", isSent: false, time: "12:30", index: 7, totalMessages: 8),
           ],
         ),
         ),
          const SizedBox(height: 15,),
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
            //        Navigator.pushNamed(context, RouteHelper.personalizePageFourteen);
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
    );
  }
}
