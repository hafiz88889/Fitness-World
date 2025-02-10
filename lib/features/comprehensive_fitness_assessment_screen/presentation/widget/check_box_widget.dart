import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final String title;
  const CheckBoxWidget({super.key,required this.title});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}
bool isSelect=false;
class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title,style: regularTextStyle18,),
        Checkbox(
            activeColor: MyColor.splashBacColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isSelect, onChanged: (value){
          setState(() {
            isSelect=value!;
          });
        })
      ],
    );
  }
}
