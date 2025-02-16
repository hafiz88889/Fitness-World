import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class AllSuggestionCheckbox extends StatefulWidget {
  final String title;
  const AllSuggestionCheckbox({super.key,required this.title});
  @override
  State<AllSuggestionCheckbox> createState() => _AllSuggestionCheckboxState();
}
bool isSelect=false;
class _AllSuggestionCheckboxState extends State<AllSuggestionCheckbox> {
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Checkbox(value: isSelect, onChanged: (value){
          setState(() {
            isSelect=value!;
          });
        },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          activeColor: MyColor.splashBacColorTwo,
        ),
        Text(widget.title,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),),
      ],
    );
  }
}
