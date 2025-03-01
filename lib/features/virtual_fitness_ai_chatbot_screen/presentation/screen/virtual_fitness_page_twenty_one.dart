import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VirtualFitnessPageTwentyOne extends StatefulWidget {
  const VirtualFitnessPageTwentyOne({super.key});

  @override
  State<VirtualFitnessPageTwentyOne> createState() => _VirtualFitnessPageTwentyOneState();
}
class _VirtualFitnessPageTwentyOneState extends State<VirtualFitnessPageTwentyOne> {

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
              ],
            ),
            const SizedBox(height: 50,),
            Image(image: AssetImage(MyImage.gymMachineOne),height: 300,width: double.infinity,fit: BoxFit.cover,),
            const SizedBox(height: 30,),
            Text(
              "Delete Conversion",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(
                  fontSize: 30),
            ),
            const SizedBox(height: 20,),
            Text(
              "Dont't Worry Your chat is Safe and secure and restore your activity ",textAlign: TextAlign.center,
              style: regularTextStyle18.copyWith(
                  fontSize: 16,color: MyColor.grayColor),
            ),
            const Spacer(),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, RouteHelper.passwordSentScreen);
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.normalRedColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Prefer to skip, thanks!",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.redColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.redColor, BlendMode.srcIn),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyTwo);
                },
                style: ButtonStyle(
                    backgroundColor:
                    WidgetStateProperty.all(MyColor.redColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Yes Delete",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage(MyImage.deleteIcon,),color: MyColor.whiteColor,height: 25,width: 25,)
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
