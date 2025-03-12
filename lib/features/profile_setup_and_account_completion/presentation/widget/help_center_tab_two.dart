import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/profile_setup_and_account_completion/presentation/widget/live_chatting_bottomsheet.dart';
import 'package:flutter/material.dart';


class HelpCenterTabTwo extends StatelessWidget {
  const HelpCenterTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColor.splashBacColor
          ),
          child: Image(image: AssetImage(MyImage.messageIcon),color: MyColor.whiteColor,height: 25,),
        ),
        const SizedBox(height: 10,),
        Text("We are here to help you with \nyour fitness needs",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(fontSize: 22),),
        const SizedBox(height: 20,),
        Text("We are here to help you with  needs",textAlign: TextAlign.center,style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            showModalBottomSheet(
              barrierColor: MyColor.splashBacColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
              isScrollControlled: true,
              context: context, builder: (context) {
              return FractionallySizedBox(
                heightFactor: 0.62,
                child: LiveChattingBottomsheet(),
              );
            },);
          },
          child: Container(
            width: 210,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColor.blackColor
            ),
            child:Row(
              children: [
                Text("Start Live Chat",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                const SizedBox(width: 10,),
               Image(image: AssetImage(MyImage.messageIcon),color: MyColor.whiteColor,height: 25,),

              ],
            )

          ),
        )
      ],
    );
  }
}
