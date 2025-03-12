import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';


class SelectLanguageWidget extends StatefulWidget {

  final String text;
  const SelectLanguageWidget({super.key,required this.text});

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColor.borderColor,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.whiteColor
            ),
            child: Image(image: AssetImage(MyImage.notifictionIcon),height: 25,),
          ),
          const SizedBox(width: 15,),
          Expanded(child: Text(widget.text,style: regularTextStyle24,)),
  Checkbox(value: isSelect, onChanged: (value){
    
    setState(() {
      isSelect=value!;
    });
  },
  activeColor: MyColor.splashBacColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  )
        ],
      ),
    );
  }
  bool isSelect=false;
}
