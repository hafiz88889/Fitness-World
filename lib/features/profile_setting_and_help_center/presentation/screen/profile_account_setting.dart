import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/profile_setting_and_help_center/presentation/widget/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class ProfileSettingPageTwo extends StatefulWidget {
  const ProfileSettingPageTwo({super.key});

  @override
  State<ProfileSettingPageTwo> createState() => _ProfileSettingPageTwoState();
}

class _ProfileSettingPageTwoState extends State<ProfileSettingPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 50, left: 20, right: 15, bottom: 20),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(35)),
                color: MyColor.blackColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: MyColor.grayColor.withAlpha(150),
                          ),
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Account Setting",
                    style: regularTextStyle24.copyWith(
                        fontSize: 30, color: MyColor.whiteColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "General",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        color: MyColor.grayColor,
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileSettingPageFour);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Notification",
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileSettingPageThree);
                    },
                    child: GeneralWidget(
                      image: MyImage.userIconTwo,
                      title: "Personal Information",
                    ),
                  ),
                  GeneralWidget(
                    image: MyImage.notifictionIcon,
                    title: "Couch Contact",
                    title2: const Text("+15"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileLanguage);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Language",
                      title2: const Text("English (EN)"),
                    ),
                  ),
                  GeneralWidget(
                    image: MyImage.notifictionIcon,
                    title: "Dark Mode",
                    title2: Switch(
                      value: isSelect,
                      onChanged: (value) {
                        setState(() {
                          isSelect = value;
                        });
                      },
                      activeColor: MyColor.splashBacColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileLinkDevice);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Linked Device",
                      title2: const Text(
                        "Apple Watch",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Security and Privacy",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.splashBacColorTwo.withAlpha(50)),
                        child: Text(
                          "Beta",
                          style: regularTextStyle24.copyWith(
                              fontSize: 16, color: MyColor.splashBacColorTwo),
                        ),
                      ),
                      const Spacer(),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileSecuritySetting);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Main Security",
                    ),
                  ),
                  GeneralWidget(
                    image: MyImage.notifictionIcon,
                    title: "Enable Biometric",
                    title2: Switch(
                      value: isSelect,
                      onChanged: (value) {
                        setState(() {
                          isSelect = value;
                        });
                      },
                      activeColor: MyColor.splashBacColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileRefferProgram);
                  },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Privacy Policy",
                      title2: const Text("3+"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Help and Support",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileAboutUs);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "About Us",
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.profileHelpCenter);
                    },
                    child: GeneralWidget(
                      image: MyImage.notifictionIcon,
                      title: "Help Center",
                    ),
                  ),
                  GeneralWidget(
                    image: MyImage.notifictionIcon,
                    title: "Submit feedback",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Danger Zone",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.redColor.withAlpha(30)),
                        child: Text(
                          "Warning",
                          style: regularTextStyle24.copyWith(
                              fontSize: 16, color: MyColor.redColor),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        MyImage.warningIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.grayColor.withAlpha(150), BlendMode.srcIn),
                        height: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: MyColor.redColor,
                    border: Border.all(color: MyColor.whiteColor.withAlpha(200),width: 4)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.whiteColor.withAlpha(150),
                          ),
                          child: Image(image: AssetImage(MyImage.deleteIcon),color: MyColor.whiteColor,height: 30,),
                        ),
                        const SizedBox(width: 12,),
                        Expanded(child: Text("Close Account",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),)),
                        Transform.rotate(
                            angle: -3,
                            child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 30,))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Log Out",style: regularTextStyle24.copyWith(fontSize: 22,),),
                      Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  GeneralWidget(
                    image: MyImage.downloadIcon,
                    title: "Sign Out",
                  ),
                  const SizedBox(height: 30,)
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 130,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(40),),
                  color: MyColor.blackColor
              ),
              child: Column(
                children: [
                  SvgPicture.asset(MyImage.backGroundFullPlus,height: 30,),
                  const SizedBox(height: 10,),
                  Text("Sandow.ai V1.2.1",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                  const SizedBox(height: 10,),
                  Text("@All Right Reverse 2025",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 14),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isSelect = false;
}
