import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenFour extends StatefulWidget {
  const ProfileScreenFour({super.key});

  @override
  State<ProfileScreenFour> createState() => _ProfileScreenFourState();
}
String selectedGender = "Trans Female";
List<String> genders = ["Male", "Female", "Non-Binary", "Trans Female", "Trans Male"];
class _ProfileScreenFourState extends State<ProfileScreenFour> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
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
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: SvgPicture.asset(MyImage.backIcon),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "OTP Setup ",
                style: regularTextStyle24.copyWith(fontSize: 20),
              ),
            ],
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImage.lockImageFull),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(height: 60,),
          Text(
            "OTP Verification ",
            style: regularTextStyle24.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 15,),
          Text(
            "Wee will senda one time SMS message Carrier rates may apply!",textAlign: TextAlign.center,
            style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
          ),
          const SizedBox(height: 30,),
          GlobalTextFieldWidget(title: "", hintText: "(+1) 012-456-789",
            suffix: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(MyImage.copyIcon),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.profileScreenFive);
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
                      "Continue",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImage.arrowRight,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
