
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenFive extends StatefulWidget {
  const ProfileScreenFive({super.key});

  @override
  State<ProfileScreenFive> createState() => _ProfileScreenFiveState();
}
List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
int selectedIndex = 0;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: selectedIndex==index?MyColor.whiteColor.withAlpha(150):MyColor.grayColor,width: selectedIndex==index?5:1),
                    color: selectedIndex == index ? MyColor.splashBacColor: MyColor.borderColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: TextField(
                      controller: controllers[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == index ? MyColor.whiteColor :MyColor.grayColor,
                      ),
                      cursorColor: Colors.transparent,
                      decoration: const InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          if (value.isNotEmpty && index < 3) {
                            selectedIndex = index + 1;
                          } else if (value.isEmpty && index > 0) {
                            selectedIndex = index - 1;
                          }
                        });
                      },
                    ),
                  ),
                );
              }),
            ),

            const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RouteHelper.profileScreenSix);
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
                style: regularTextStyle18.copyWith(fontSize: 14),
                children: [
                  TextSpan(
                    text: "Send again",
                    style:regularTextStyle18.copyWith(fontSize: 14,color: MyColor.splashBacColor,decoration: TextDecoration.underline)
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
