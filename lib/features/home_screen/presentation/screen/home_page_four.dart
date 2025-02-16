import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/heart_rate_history_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/heart_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomeScreenFour extends StatelessWidget {
  const HomeScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
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
                    "Heart Rate",
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
              const SizedBox(height: 50,),
              Text("Heart Rate Status",style: regularTextStyle24.copyWith(fontSize: 30),),
              const SizedBox(height: 20,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeartRateWidget(),
                    HeartRateWidget(),
                    HeartRateWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Image(image: AssetImage(MyImage.chartImageTwo)),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Heart Rate History ",
                    style: regularTextStyle24.copyWith(fontSize: 20),
                  ),
                  Image(
                    image: AssetImage(MyImage.threeDotMenuIcon),
                    color: MyColor.grayColor,
                    height: 25,
                    width: 25,
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const HeartRateHistoryWidget(),
              const HeartRateHistoryWidget(),
              const HeartRateHistoryWidget(),
              const HeartRateHistoryWidget(),
              const SizedBox(height: 10,),
              SlideAction(
                onSubmit: () {
                Navigator.pushNamed(context, RouteHelper.homeScreenFive);
                return null;
                },
                outerColor:MyColor.blackColor,
                sliderButtonIcon:SvgPicture.asset(MyImage.backIcon),
                sliderButtonIconPadding: 8,
                text: "Swipe to re-calibrate...",
                textStyle:regularTextStyle18.copyWith(color: MyColor.whiteColor),
                elevation: 4,
                borderRadius: 12,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
