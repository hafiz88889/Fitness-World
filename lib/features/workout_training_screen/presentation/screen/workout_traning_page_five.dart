import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutTraningPageFive extends StatelessWidget {
  const WorkoutTraningPageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 35),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImage.backBodyMan),fit: BoxFit.cover)
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: MyColor.whiteColor)),
                  child: Text(
                    "25 Total",
                    style:
                        regularTextStyle18.copyWith(color: MyColor.whiteColor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Back Workout",
                  style: regularTextStyle24.copyWith(
                      fontSize: 36, color: MyColor.whiteColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "With Azunyan U. Wu   ",
                  style: regularTextStyle24.copyWith(
                      fontSize: 16, color: MyColor.whiteColor.withAlpha(250)),
                ),
                const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(MyImage.watchIcon,height: 25,width: 25,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    const SizedBox(height: 10,),
                    Text("58Min",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                    Text("Time",style: regularTextStyle24.copyWith(color: MyColor.whiteColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImage.fireIcon,height: 25,width: 25,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    const SizedBox(height: 10,),
                    Text("254kcal",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                    Text("Kalorie",style: regularTextStyle24.copyWith(color: MyColor.whiteColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImage.weightLiftIcon,height: 25,width: 25,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    const SizedBox(height: 10,),
                    Text("3X4",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                    Text("Sets",style: regularTextStyle24.copyWith(color: MyColor.whiteColor.withAlpha(150),fontSize: 20),),

                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                    child:Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: MyColor.whiteColor)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Datails",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                          const SizedBox(width: 8,),
                          SvgPicture.asset(MyImage.copyIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor , BlendMode.srcIn),)
                        ],
                      ),
                    ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child:GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.workotTrainingPageFive);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        color: MyColor.splashBacColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Start",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                          const SizedBox(width: 8,),
                          Image(image: AssetImage(MyImage.alarmIcon),color: MyColor.whiteColor,height: 20,width: 20,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}
