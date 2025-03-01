import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_text_style.dart';

class VoliumWidget extends StatelessWidget {
  final String title;
  final String title2;
  final Color color;
  final String image;
  final double height;

  const VoliumWidget(
      {super.key,
      required this.title,
      required this.title2,
      required this.color,
      required this.image,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: 220,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MyColor.borderColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
                image,
              colorFilter: ColorFilter.mode(
                  MyColor.grayColor.withAlpha(150), BlendMode.srcIn),
              height: 35,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: height,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:color
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                title,
                  style: regularTextStyle24.copyWith(
                      color: MyColor.whiteColor, fontSize: 18),
                ),
                Text(
                  title2,
                  style: regularTextStyle24.copyWith(
                      color: MyColor.whiteColor, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
