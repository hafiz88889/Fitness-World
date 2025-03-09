import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final String title;
  const CheckBox({super.key,required this.title});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}
bool isSelct=false;
class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: MyColor.splashBacColorTwo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          value: isSelct, onChanged: (value) {
         setState(() {
           isSelct=value!;
         });
        },),
        const SizedBox(width: 10,),
        Text(widget.title,style: regularTextStyle24.copyWith(fontSize: 16),),
      ],
    );
  }
}
