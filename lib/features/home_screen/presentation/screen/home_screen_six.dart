import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenSix extends StatefulWidget {
  const HomeScreenSix({super.key});

  @override
  State<HomeScreenSix> createState() => _HomeScreenSixState();
}
class _HomeScreenSixState extends State<HomeScreenSix> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text(
                  " Hydration",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
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
                    child: SvgPicture.asset(MyImage.settingIcn),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(MyImage.hertIcon,),height: 25,width: 25,color: MyColor.splashBacColorTwo,),
              const SizedBox(width: 10,),
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.homeScreenSix);
                  },
                  child: Text("500",style: regularTextStyle24.copyWith(fontSize: 80),)),
              const SizedBox(width: 10,),
              Text("ml",style: regularTextStyle24.copyWith(fontSize: 40,color: MyColor.grayColor),),
            ],
          ),
          Text("You need 1500ml for today ",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.grayColor),),
          const SizedBox(height: 30,),
        ],
      ),
      bottomNavigationBar:  Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: 530,
            width:double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50),
              ),
              color: MyColor.borderColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Goal",style: regularTextStyle18,),
                Text("200ml",style: regularTextStyle24,),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              width:MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50),
                ),
                color: MyColor.splashBacColorTwo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Current",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                  Text("500ml",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                  const SizedBox(height: 50,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RouteHelper.homeScreenSeven);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 66,
                        width: 66,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.whiteColor,
                        ),
                        child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
