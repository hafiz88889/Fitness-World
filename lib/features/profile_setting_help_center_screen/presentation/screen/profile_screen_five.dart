
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ProfileScreenFive extends StatefulWidget {
  const ProfileScreenFive({super.key});

  @override
  State<ProfileScreenFive> createState() => _ProfileScreenFiveState();
}
TextEditingController otpController = TextEditingController();
String enteredOtp = "";
bool isError = false;
bool isSelect=true;
class _ProfileScreenFiveState extends State<ProfileScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
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
                  "OTP Setup",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Enter 4 Digit OTP Code",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 10,),
            Text(
              "Please Enter 4 Digit OTP Code we sent to your phone ",
              textAlign: TextAlign.center,
              style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
            ),
            const SizedBox(
              height: 50,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 60,
                fieldWidth: 50,
                activeColor: MyColor.splashBacColor,
                inactiveColor: MyColor.grayColor,
                selectedColor: MyColor.splashBacColor,
                activeFillColor: MyColor.splashBacColor,
                selectedFillColor: MyColor.whiteColor,
                inactiveFillColor: MyColor.borderColor
              ),
              controller: otpController,
              onChanged: (value) {
                setState(() {
                  enteredOtp = value;
                });
              },
            ),
            const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){

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
            const SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: "Didn’t receive your OTP? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Send again",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
