import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class ErrorPageSix extends StatelessWidget {
  const ErrorPageSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.grayColor.withAlpha(50),
                      ),
                      child: SvgPicture.asset(MyImage.backIcon),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                width: double.infinity,
                child: Image(
                  image: AssetImage(MyImage.featureLocked),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Feature Locked",
                style: regularTextStyle24.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Unfortunately this feature only available for pro user Go Pro Now!",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, RouteHelper.communityPageOne);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(MyColor.splashBacColor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Go Pro Now!",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage(MyImage.star),
                        color: MyColor.whiteColor,
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
