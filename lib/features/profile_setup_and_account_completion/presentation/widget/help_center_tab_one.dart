import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTabOne extends StatelessWidget {
final List<Map<String,dynamic>>item=[
  {"question": "What is Sandow AI?", "answer": "Sandow AI is an advanced fitness app that uses AI for personalized training."},
  {"question": "How does Sandow AI work?", "answer": "It analyzes your fitness data and suggests customized workout plans."},
  {"question": "Is Sandow AI a replacement for a coach?", "answer": "No, it complements a fitness coach but doesn't replace human guidance."},
  {"question": "Is Sandow AI free to use?", "answer": "There are both free and premium plans available."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
  {"question": "Is my data secure?", "answer": "Yes, Sandow AI follows encryption standards to secure your data."},
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 12,right: 12,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColor.borderColor,
        ),
        child: ExpansionTile(
          iconColor: MyColor.redColor,
       trailing: Container(
         padding: const EdgeInsets.all(10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           color: MyColor.splashBacColor,
         ),
         child: Transform.rotate(
             angle: -1.5,
             child: SvgPicture.asset(MyImage.backIcon,height: 25,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)),
       ),
          textColor: MyColor.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: MyColor.blackColor,
          title: Text(
            item[index]["question"],
            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:Text(item[index]["answer"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.whiteColor),),
            ),
          ],
        ),
      );
    },
    );
  }
}
