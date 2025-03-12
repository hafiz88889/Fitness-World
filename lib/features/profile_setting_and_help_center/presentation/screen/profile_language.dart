import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/notification_setting_widget.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/select_language_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileLanguage extends StatefulWidget {
  const ProfileLanguage({super.key});

  @override
  State<ProfileLanguage> createState() => _ProfileLanguageState();
}

class _ProfileLanguageState extends State<ProfileLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.borderColor),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter:
                        ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  Text(
                    "Language",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.blackColor, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Selected Language",style: regularTextStyle24,),
                  Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColor,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.whiteColor
                      ),
                      child: Image(image: AssetImage(MyImage.notifictionIcon),height: 25,width: 25,),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(child: Text("Japanese(JP)",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),)),
                  Icon(Icons.check_box,color: MyColor.whiteColor,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Billing Feature",style: regularTextStyle24,),
                  Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,width: 25,)
                ],
              ),
              const SizedBox(height: 10,),
              NotificationSettingWidget(image: MyImage.notifictionIcon, text: "Enable Billing"),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Language",style: regularTextStyle24,),
                  Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,width: 25,)
                ],
              ),
              const SizedBox(height: 10,),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "Bangladeshi (BN)"),
              SelectLanguageWidget(text: "Japaniew(JP)"),
              SelectLanguageWidget(text: "Uk"),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "American (US)"),
              SelectLanguageWidget(text: "American (US)"),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
