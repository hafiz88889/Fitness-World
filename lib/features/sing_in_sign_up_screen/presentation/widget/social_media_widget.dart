import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaWidget extends StatelessWidget {
  final String image;
  const SocialMediaWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      height: 56,
      width: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: MyColor.hintColor.withAlpha(100)
          )
      ),
      child: SvgPicture.asset(image),
    );
  }
}
