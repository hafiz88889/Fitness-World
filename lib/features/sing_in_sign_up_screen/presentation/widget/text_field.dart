import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';



class GlobalTextFieldWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  const GlobalTextFieldWidget({super.key,
    required this.title,
    required this.hintText,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: regularTextStyle18.copyWith(fontSize: 14,fontWeight: FontWeight.w700),),
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(50),width: 7,)
              ),
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: MyColor.hintColor.withAlpha(20),
              hintText: hintText,hintStyle: regularTextStyle18.copyWith(color: MyColor.hintColor),
              suffixIcon: suffix,
              prefixIcon: prefix,
            ),
          ),
        ],
      ),
    );
  }
}
