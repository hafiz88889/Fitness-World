import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/ai_suggesion_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/all_suggestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenEleven extends StatefulWidget {
  const HomeScreenEleven({super.key});

  @override
  State<HomeScreenEleven> createState() => _HomeScreenElevenState();
}

class _HomeScreenElevenState extends State<HomeScreenEleven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body:  DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 250,
                    decoration: BoxDecoration(
                    color: MyColor.blackColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.borderColor.withAlpha(100),
                            ),
                            child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text("AI Suggestions",style: regularTextStyle24.copyWith(fontSize: 24,color: MyColor.whiteColor),),
                        const SizedBox(height: 20,),
                        Container(
                          height: 60,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: MyColor.grayColor),
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.transparent,
                            indicator: BoxDecoration(
                              color: MyColor.borderColor.withAlpha(50),
                              borderRadius: const BorderRadius.all(Radius.circular(25)),
                            ),
                            labelColor: MyColor.whiteColor,
                            unselectedLabelColor: MyColor.borderColor.withAlpha(100),
                            tabs:  const [
                              Text(
                                "Fitness",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Diet",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Other",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 5,top: 30),
                child: Column(
                  children: [
                    const AiSuggesionWidget(),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Suggestions",
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
                    const SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AllSuggestionWidget(image: MyImage.fireIcon, title1: "Take Less Breaks,\nMore Exersice", title2: "Push yourself hand"),
                          AllSuggestionWidget(image: MyImage.fireIcon, title1: "Less Fat More,\nProten", title2: "Push yourself hand"),
                          AllSuggestionWidget(image: MyImage.fireIcon, title1: "Take Less Breaks,\nMore Exersice", title2: "Push yourself hand"),
                          AllSuggestionWidget(image: MyImage.fireIcon, title1: "Take Less Breaks,\nMore Exersice", title2: "Push yourself hand"),
                        ],
                      )
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
