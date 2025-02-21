import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldWorkOutTraning extends StatelessWidget {

  const TextFieldWorkOutTraning({super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                  borderRadius: BorderRadius.circular(20)
              ),
           focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
             borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(100),width: 3),
           ),
              labelStyle: regularTextStyle18.copyWith(color: MyColor.whiteColor),
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: MyColor.grayColor.withAlpha(150),
              hintText: "Cardio Worout",hintStyle: regularTextStyle18.copyWith(color: MyColor.whiteColor),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.searchIcon,height: 20,width: 20,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
