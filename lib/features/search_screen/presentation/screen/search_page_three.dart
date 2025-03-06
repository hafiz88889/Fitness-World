import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class SearchPageThree extends StatefulWidget {
  const SearchPageThree({super.key});

  @override
  State<SearchPageThree> createState() => _SearchPageThreeState();
}

final List<Map<String, dynamic>> item = [
  {"image": MyImage.weightLiftIcon, "text": "Workout"},
  {"image": MyImage.resturentIcon, "text": "Meals"},
  {"image": MyImage.two, "text": "Couch"},
  {"image": MyImage.fireIcon, "text": "Kcal"},
  {"image": MyImage.watchIcon, "text": "time"},
];

class _SearchPageThreeState extends State<SearchPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
                color: MyColor.splashBacColor),
            child: SafeArea(
              child: Column(
                children: [
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
                            color: MyColor.whiteColor.withAlpha(150),
                          ),
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Search",
                        style: regularTextStyle24.copyWith(
                            fontSize: 24, color: MyColor.whiteColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: MyColor.whiteColor,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          MyImage.searchIcon,
                          height: 25,
                          width: 25,
                          colorFilter: ColorFilter.mode(
                              MyColor.blackColor, BlendMode.srcIn),
                        ),
                      ),
                      hintText: "Fitness AI Assistance...",
                      hintStyle: regularTextStyle18.copyWith(
                          color: MyColor.blackColor.withAlpha(200)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                item[index]["image"],
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                item[index]["text"],
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "8 Results Found.",
                      style: regularTextStyle24.copyWith(fontSize: 20),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: MyColor.grayColor, width: 1)),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(MyImage.filterIcon),
                            color: MyColor.grayColor.withAlpha(150),
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Match%",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.blackColor.withAlpha(150),
                                fontSize: 14),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Transform.rotate(
                            angle: -1.5,
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.grayColor, BlendMode.srcIn),
                              height: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.borderColor),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 66,
                            width: 66,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.whiteColor),
                            child: SvgPicture.asset(
                              MyImage.two,height: 25,width: 25,
                              colorFilter: ColorFilter.mode(
                                  MyColor.grayColor.withAlpha(150),
                                  BlendMode.srcIn,),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Virtual AI Couch",style: regularTextStyle24,),
                                const SizedBox(height: 6,),
                                Row(
                                  children: [
                                    Container(
                                      padding:EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: MyColor.greenColor)
                                      ),
                                      child: Text("Fitness",style: regularTextStyle24.copyWith(fontSize: 14),),
                                    ),
                                    const SizedBox(width: 5,),
                                    Text("98% Match",style: regularTextStyle24.copyWith(fontSize: 16),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Transform.rotate(angle: 3,
                          child: SvgPicture.asset(MyImage.backIcon,height: 25,),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
