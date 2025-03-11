import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';


class NotificationSettingWidget extends StatefulWidget {
  final String image;
  final String text;
  const NotificationSettingWidget({super.key,required this.image,required this.text});

  @override
  State<NotificationSettingWidget> createState() => _NotificationSettingWidgetState();
}

class _NotificationSettingWidgetState extends State<NotificationSettingWidget> {
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
            child: Image(image: AssetImage(widget.image),height: 25,),
          ),
          const SizedBox(width: 15,),
          Expanded(child: Text(widget.text,style: regularTextStyle24,)),
          Switch(value: isSelect, onChanged: (value){
            setState(() {
              isSelect=value;
            });
          },
            thumbColor: WidgetStateProperty.all(MyColor.whiteColor),
            activeColor: MyColor.splashBacColor,
          )
        ],
      ),
    );
  }
  bool isSelect=false;
}
