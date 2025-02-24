import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class WorkoutThirteenPageTabbarviewone extends StatefulWidget {
  const WorkoutThirteenPageTabbarviewone({super.key});

  @override
  State<WorkoutThirteenPageTabbarviewone> createState() => _WorkoutThirteenPageTabbarviewoneState();
}
bool isSelect=false;
bool isSelectTwo=false;

final List<Map<String,dynamic>>items=[
{"text1":"Prevents Injuries","text2":"Proper from reduces the risk of strains sprains and other workout related injuries","image":MyImage.yogaIcon},
{"text1":"Maximizes Efficiency","text2":"Precise movements target the right muscies maximizing the effectiveness of your workout","image":MyImage.yogaIcon},
{"text1":"Enhances Balance","text2":"Proper Posture improves balance and stability enhancing overall athletic performance","image":MyImage.leafIcon},
{"text1":"Prevents Injuries","text2":"Proper from reduces the eisk of strains sprains and other workout related injuries","image":MyImage.yogaIcon},
{"text1":"Prevents Injuries","text2":"Proper from reduces the eisk of strains sprains and other workout related injuries","image":MyImage.yogaIcon},
];

class _WorkoutThirteenPageTabbarviewoneState extends State<WorkoutThirteenPageTabbarviewone> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Text("Why correct my fitness form?",style: regularTextStyle24.copyWith(fontSize: 22),),
        const SizedBox(height: 8,),
        Text("Achieve maximum results and prevent injuries by mastering the art of proper exercise from Pur AI is here to guide you ensuring each movement is precise and effective.",textAlign:TextAlign.start,style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                height:200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.manFontSide),fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            activeColor: MyColor.splashBacColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            value: isSelectTwo, onChanged: (value){
                          setState(() {
                            isSelectTwo=value!;
                          });
                        }),
                        Text("Front",style: regularTextStyle24,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                height:200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.manBackSide),fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            activeColor: MyColor.splashBacColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            value: isSelect, onChanged: (value){
                          setState(() {
                            isSelect=value!;
                          });
                        }),
                        Text("Back",style: regularTextStyle24,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Text("What's the benefits?",style: regularTextStyle24.copyWith(fontSize: 22),),
        const SizedBox(height: 10,),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return  Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.borderColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(items[index]["text1"],style: regularTextStyle24,),
                      SvgPicture.asset(items[index]["image"],colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),height: 25,width: 25,)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(items[index]["text2"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),

                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
