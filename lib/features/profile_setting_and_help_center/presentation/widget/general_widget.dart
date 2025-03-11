import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class GeneralWidget extends StatelessWidget {
  final String image;
  final String title;
  final Widget? title2;
  const GeneralWidget({super.key,
  required this.image,
    required this.title,
    this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColor.borderColor),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.whiteColor),
            child: Image(
              image: AssetImage(image),
              height: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: regularTextStyle24,
            ),
          ),
          Container(
            child:title2 ,
          ),
          const SizedBox(width: 8,),
          Transform.rotate(
              angle: -3,
              child: SvgPicture.asset(MyImage.backIcon,height: 30,)),
        ],
      ),
    );

  }
}
