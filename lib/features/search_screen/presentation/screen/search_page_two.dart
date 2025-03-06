import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class SearchPageTwo extends StatefulWidget {
  const SearchPageTwo({super.key});

  @override
  State<SearchPageTwo> createState() => _SearchPageTwoState();
}

final List<Map<String, dynamic>> item = [
  {"image": MyImage.weightLiftIcon, "text": "Workout"},
  {"image": MyImage.resturentIcon, "text": "Meals"},
  {"image": MyImage.two, "text": "Couch"},
  {"image": MyImage.fireIcon, "text": "Kcal"},
  {"image": MyImage.watchIcon, "text": "time"},
];

class _SearchPageTwoState extends State<SearchPageTwo> {
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
            height: 50,
          ),
          Image(
            image: AssetImage(MyImage.searchImage),
            height: 350,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteHelper.searchPageThree);
            },
            child: Text(
              'Woops! No Found!',
              style: regularTextStyle24.copyWith(fontSize: 36),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Unfortunately the key you entered cannot be found Please try another keyword or check again ",
            textAlign: TextAlign.center,
            style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150,),),
          )
        ],
      ),
    );
  }
}
