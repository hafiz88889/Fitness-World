import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';

class WorkoutRowTwo extends StatefulWidget {
  const WorkoutRowTwo({super.key});

  @override
  State<WorkoutRowTwo> createState() => _WorkoutRowTwoState();
}
bool isSelect=false;
bool isSelect2=true;
class _WorkoutRowTwoState extends State<WorkoutRowTwo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration:
      BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MyColor.borderColor
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(MyImage.pushUpMan),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColor.grayColor.withAlpha(100),
                ),
                child: Text("Weightlifting",style: regularTextStyle18.copyWith(fontSize: 16),),
              ),
              Text("Upper Streath",style: regularTextStyle24.copyWith(fontSize: 20),),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      activeColor: MyColor.grayColor,
                      value: isSelect, onChanged: (value){
                    setState(() {
                      isSelect=value!;
                    });
                  }),
                      Text("Complete",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                  const SizedBox(width: 10,),
                  Text("+8 Score%",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),)
                ],
              )
            ],
          ),
          const Spacer(),
          Checkbox(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              activeColor: MyColor.splashBacColorTwo,
              value: isSelect2, onChanged: (value){
            setState(() {
              isSelect2=value!;
            });
          }),
        ],
      ),
    );
  }
}
