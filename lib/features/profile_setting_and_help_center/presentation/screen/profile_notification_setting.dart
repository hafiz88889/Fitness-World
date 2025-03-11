import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/general_widget.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/notification_setting_widget.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/notification_sound_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ProfileSettingPageFour extends StatefulWidget {
  const ProfileSettingPageFour({super.key});

  @override
  State<ProfileSettingPageFour> createState() => _ProfileSettingPageFourState();
}

class _ProfileSettingPageFourState extends State<ProfileSettingPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(child:
      Padding(padding: const EdgeInsets.all(12),
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
                Text("Notification Setting",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 22),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("General",style: regularTextStyle24.copyWith(fontSize: 20,),),
                Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
              ],
            ),
            const SizedBox(height: 15,),
            NotificationSettingWidget(image: MyImage.notifictionIcon, text: "Push Notification"),
            NotificationSettingWidget(image: MyImage.notifictionIcon, text: "AI Couch Notification"),
            NotificationSettingWidget(image: MyImage.notifictionIcon, text: "Metrics Notification"),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sound",style: regularTextStyle24.copyWith(fontSize: 20,),),
                Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
              ],
            ),
            const SizedBox(height: 10,),
            const NotificationSoundWidget(title: "Vibration", subtitle: "When Vibrate notification is on your phone on vibrate"),
            const NotificationSoundWidget(title: "Sound", subtitle: "When Vibrate notification is on your phone on vibrate this is phone is on and do sound calling "),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Misk",style: regularTextStyle24.copyWith(fontSize: 20,),),
                Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
              ],
            ),
            const SizedBox(height: 10,),
            GeneralWidget(
              image: MyImage.notifictionIcon,
              title: "Offers",
              title2: const Text("iphone 14pro max"),
            ),
            NotificationSettingWidget(image: MyImage.downloadIcon, text: "App Update"),
            const NotificationSoundWidget(title: "Resouce", subtitle: "When Vibrate notification is on your phone on vibrate"),
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
      ),
      ),
    );
  }
}
