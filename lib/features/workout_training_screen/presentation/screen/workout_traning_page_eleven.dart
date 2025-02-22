import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutTraningPageEleven extends StatelessWidget {
  const WorkoutTraningPageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 35),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImage.gymManFour),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(150)),
                    child: SvgPicture.asset(
                      MyImage.backIcon,
                      colorFilter: ColorFilter.mode(
                          MyColor.whiteColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                Text("Workout Complete",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor.withAlpha(150)),
                  child: SvgPicture.asset(
                    MyImage.settingIcn,
                    colorFilter: ColorFilter.mode(
                        MyColor.whiteColor, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
            const Spacer(),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Back Workout",
                  style: regularTextStyle24.copyWith(
                      fontSize: 36, color: MyColor.blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "You Barn 215kcal ",
                  style: regularTextStyle24.copyWith(
                      fontSize: 16, color: MyColor.grayColor.withAlpha(250)),
                ),
                const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(MyImage.watchIcon,height: 25,width: 25,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),),
                    const SizedBox(height: 10,),
                    Text("30Min",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                    Text("Time",style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImage.fireIcon,height: 25,width: 25,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),),
                    const SizedBox(height: 10,),
                    Text("158",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                    Text("kcal",style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
                Column(
                  children: [
                   Image(image: AssetImage(MyImage.hertIcon),color: MyColor.grayColor,height: 30,width: 30,),
                    const SizedBox(height: 10,),
                    Text("128",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                    Text("BPM",style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RouteHelper.workoutTraningPageTwelve);
                },
                style: ButtonStyle(
                    backgroundColor:
                    WidgetStateProperty.all(MyColor.splashBacColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                    ),
                    ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Complete",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 20),
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
        )
      )
    );
  }
}
