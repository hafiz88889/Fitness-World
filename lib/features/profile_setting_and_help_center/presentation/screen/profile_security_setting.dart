import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/notification_sound_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileSecuritySetting extends StatelessWidget {
  const ProfileSecuritySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.grayColor.withAlpha(100),
                      ),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.blackColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Text("Security Setting",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 22),),
                ],
              ),
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Image(image: AssetImage(MyImage.securityImage),fit: BoxFit.cover,),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("General",style: regularTextStyle24.copyWith(fontSize: 20,),),
                  Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
                ],
              ),
              const SizedBox(height: 10,),
              const NotificationSoundWidget(title: "2 Factor Authentication", subtitle: "When Vibrate notification is on your phone on vibrate this is phone is on and do sound calling "),
              const NotificationSoundWidget(title: "Google Authentication", subtitle: "When Vib this is phone is on and do sound calling "),
              const NotificationSoundWidget(title: "Face ID", subtitle: "When Vibrate this is no more do sound calling "),
              const NotificationSoundWidget(title: "Biometric Unlock", subtitle: "When Vibrate  is the are for  phone is on and do sound calling "),
              const SizedBox(height: 20,),
              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    //    Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyTwo);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      WidgetStateProperty.all(MyColor.blackColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Save Change",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
