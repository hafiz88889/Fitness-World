import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';


class NotificationSoundWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  const NotificationSoundWidget({super.key,required this.title,required this.subtitle});

  @override
  State<NotificationSoundWidget> createState() => _NotificationSoundWidgetState();
}

class _NotificationSoundWidgetState extends State<NotificationSoundWidget> {
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
          const SizedBox(width: 15,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,style: regularTextStyle24,),
              const SizedBox(height: 5,),
              Text(widget.subtitle,style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor.withAlpha(150)),),
            ],
          )),
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
