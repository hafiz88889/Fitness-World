import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileScreenThree extends StatefulWidget {
  const ProfileScreenThree({super.key});

  @override
  State<ProfileScreenThree> createState() => _ProfileScreenThreeState();
}

class _ProfileScreenThreeState extends State<ProfileScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Password Setup",
                style: regularTextStyle24.copyWith(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          TextField(
            obscureText: true,
            maxLength: 8,
            decoration: InputDecoration(
              counter: const Text(""),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                  borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(50),width: 7,)
              ),
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: MyColor.hintColor.withAlpha(20),
              hintText: "Password",hintStyle: regularTextStyle18.copyWith(color: MyColor.hintColor),
              suffixIcon: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColor.borderColor
                ),
                child: SvgPicture.asset(MyImage.visibilityIcon),
              ),
            ),
          ),
          Text("Password Streedth",style: regularTextStyle24.copyWith(color: MyColor.blackColor.withAlpha(200)),),
          const SizedBox(height: 15,),
          LinearPercentIndicator(
            animation: true,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(20),
            padding: const EdgeInsets.all(1),
            width: MediaQuery.of(context).size.width-40,
            lineHeight: 12.0,
            percent: 0.5,
            backgroundColor: MyColor.borderColor,
            progressColor: MyColor.redColor,
          ),
          const SizedBox(height: 15,),
          Text("week!! increase Strong",style: regularTextStyle18.copyWith(color: MyColor.blackColor.withAlpha(200),fontSize: 16),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.redColor.withAlpha(30),
                  border: Border.all(color: MyColor.redColor)
                ),
                  child: Row(
                    children: [
                      SvgPicture.asset(MyImage.warningIcon),
                      const SizedBox(width: 10,),
                      Text("Must have A-Z",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 14),),

                    ],
                  ),
              ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.redColor.withAlpha(30),
                    border: Border.all(color: MyColor.redColor)
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(MyImage.warningIcon),
                    const SizedBox(width: 10,),
                    Text("Must have 0-9",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 14),),

                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.profileScreenFour);
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
