import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/all_suggestion_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenTwelve extends StatefulWidget {
  const HomeScreenTwelve({super.key});

  @override
  State<HomeScreenTwelve> createState() => _HomeScreenTwelveState();
}
bool isSelect=false;
class _HomeScreenTwelveState extends State<HomeScreenTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 35, left: 10, right: 10, bottom: 10),
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage(MyImage.bennerImageOne),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
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
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.grayColor.withAlpha(50),
                            ),
                            child: SvgPicture.asset(MyImage.settingIcn),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.splashBacColor),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              MyImage.weightLiftIcon,
                              height: 25,
                              width: 25,
                            ),
                            Text(
                              "Habit",
                              style: regularTextStyle18.copyWith(
                                  color: MyColor.whiteColor),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Increase Calorie",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            MyImage.watchIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.grayColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                          Text(
                            "30 Minutes",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            MyImage.fireIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.grayColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                          Text(
                            "787 kcal",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 5, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Why Consummer More?",
                      style: regularTextStyle24.copyWith(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Increasing your calorie intake can support muscle \ngrowth enhance endurance and aid in recovery  \nit's essential to strike the right balance between \nmacronutrients for optimal ",
                        textAlign: TextAlign.start,
                        style: regularTextStyle18.copyWith(
                            fontSize: 14, color: MyColor.grayColor)),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.greenColor.withAlpha(20),
                        border: Border.all(color: MyColor.greenColor)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage(MyImage.pineAppleICon),color: MyColor.greenColor,height: 20,width: 20,),
                          const SizedBox(width: 15,),
                          Text("Suggest Increase: +30%",style: regularTextStyle24,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text("Video",style: regularTextStyle24.copyWith(fontSize: 22),),
                    const SizedBox(height: 200,),
                    Text("Benefits",style: regularTextStyle24.copyWith(fontSize: 22),),
                    const SizedBox(height: 10,),
                    const AllSuggestionCheckbox(title: "Nutrient-Rich Smoothies"),
                    const AllSuggestionCheckbox(title: "Green Vegetables(Brocollis,Beans,etc)"),
                    const AllSuggestionCheckbox(title: "Seeds & Nuts(Quinoa,etc)"),
                    const AllSuggestionCheckbox(title: "Vitamin-rich Fruits(Orange,banana,etc)"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColor
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Score Reward",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                              const SizedBox(height: 20,),
                              Text("Increase your Sandow Score\nafter you resolved this ",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.whiteColor
                            ),
                            child: Row(
                              children: [
                                Text("+5",style: regularTextStyle24.copyWith(color: MyColor.splashBacColor,fontSize: 40),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteHelper.activityTrackerPageOne);
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
                                "Resolve Suggestion",
                                style: regularTextStyle18.copyWith(
                                    color: MyColor.whiteColor, fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor , BlendMode.srcIn),
                              )
                            ],
                          ),
                        ),
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
