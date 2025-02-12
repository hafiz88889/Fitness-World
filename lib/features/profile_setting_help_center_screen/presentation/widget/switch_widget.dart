import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwitchWidget extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  const SwitchWidget({super.key,
  required this.image,
    required this.title,
    required this.color,
  });

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}
bool isSelect=false;
class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: MyColor.borderColor,
      ),
      child:   Row(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:widget.color
              ),
              child: SvgPicture.asset(widget.image,height: 30,width: 30,)
          ),
          const SizedBox(width: 10,),
          Text(widget.title,style: regularTextStyle18.copyWith(fontSize: 14),),
          const Spacer(),
          Switch(
            inactiveThumbColor: MyColor.whiteColor,
            activeTrackColor: MyColor.splashBacColor,
            activeColor: MyColor.whiteColor,
            value: isSelect,
            onChanged: (value){
              setState(() {
                isSelect=value;
              });
            },
          )
        ],
      ),
    );


  }
}
