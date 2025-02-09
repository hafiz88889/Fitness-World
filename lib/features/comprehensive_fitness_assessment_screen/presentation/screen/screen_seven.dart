import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}
class _ScreenSevenState extends State<ScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                  "Assessment",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                const Spacer(),
                Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.splashBacColorTwo.withAlpha(30)),
                  child: Text(
                    "7 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "Do you have any physical limitations?",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Image(image: AssetImage(MyImage.wheelChare)),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(2),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyColor.splashBacColor.withAlpha(100),width: 6,)
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),borderSide: BorderSide(color: MyColor.splashBacColor,)
                  ),
                  border: InputBorder.none
                ),
              )
            ),
            const SizedBox(height: 50,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, RouteHelper.screenEight);
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
                      MyImage.arrowRight,colorFilter: ColorFilter.mode(MyColor.whiteColor , BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
