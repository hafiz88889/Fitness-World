import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/page_thirteen_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityScreenPageThirteen extends StatefulWidget {
  const ActivityScreenPageThirteen({super.key});

  @override
  State<ActivityScreenPageThirteen> createState() =>
      _ActivityScreenPageThirteenState();
}

bool isSelectOne = false;
bool isSelectTwo = false;
final List<Map<String, dynamic>> stressLevel = [
  {
    "image": MyImage.warningIcon,
    "text": "Normal",
  },
  {
    "image": MyImage.warningIcon,
    "text": "Medium",
  },
  {
    "image": MyImage.warningIcon,
    "text": "Extreme",
  },
];
int selectIndex = 1;
String selectItem = "Bench Press";
List<String> category = ["Bench Press", "Walking", "Biking", "Weight lifting"];

class _ActivityScreenPageThirteenState
    extends State<ActivityScreenPageThirteen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 30, left: 15, right: 15),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: MyColor.blackColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
                          height: 10,
                        ),
                        Text(
                          "Weightlifting",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: MyColor.grayColor.withAlpha(150)),
                            child: TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                  color: MyColor.grayColor,
                                  borderRadius: BorderRadius.circular(25)),
                              labelColor: MyColor.whiteColor,
                              unselectedLabelColor:
                                  MyColor.borderColor.withAlpha(100),
                              tabs: const [
                                Text(
                                  "Manual",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Auto Setup"),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Select Weightlift Type",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.borderColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        dropdownColor: MyColor.whiteColor,
                        icon: Transform.rotate(
                          angle: -1.5,
                          child: SvgPicture.asset(MyImage.backIcon),
                        ),
                        value: selectItem,
                        isExpanded: true,
                        items: category.map((String selected) {
                          return DropdownMenuItem(
                            value: selected,
                            child: Text(selected),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectItem = newValue!;
                          });
                        }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Select Steth Lebel",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(stressLevel.length, (index) {
                      bool isSelected = index == selectIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: isSelected
                                  ? MyColor.splashBacColorTwo
                                  : MyColor.borderColor,
                              border: Border.all(
                                  color: isSelected
                                      ? MyColor.whiteColor.withAlpha(150)
                                      : Colors.transparent,
                                  width: isSelected ? 5 : 0)),
                          child: Row(
                            children: [
                              Text(stressLevel[index]["text"],
                                  style: regularTextStyle18.copyWith(
                                      color: isSelected
                                          ? MyColor.whiteColor
                                          : MyColor.blackColor)),
                              const SizedBox(width: 8),
                              SvgPicture.asset(
                                stressLevel[index]["image"],
                                colorFilter: ColorFilter.mode(
                                    isSelected
                                        ? MyColor.whiteColor
                                        : MyColor.grayColor,
                                    BlendMode.srcIn),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const PageThirteenSliderWidget(title: "Select Weight(Kg)"),
                const SizedBox(
                  height: 20,
                ),
                const PageThirteenSliderWidget(title: "Select Sets"),
                const SizedBox(
                  height: 20,
                ),
                const PageThirteenSliderWidget(title: "Select Reps"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Show States After",
                          style: regularTextStyle24.copyWith(fontSize: 20),
                        ),
                        Text(
                          "Show Post Activity State Autometicly ",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      inactiveThumbColor: MyColor.whiteColor,
                      activeTrackColor: MyColor.splashBacColor,
                      activeColor: MyColor.whiteColor,
                      value: isSelectTwo,
                      onChanged: (value) {
                        setState(() {
                          isSelectTwo = value;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Auto Save Metrics?",
                          style: regularTextStyle24.copyWith(fontSize: 20),
                        ),
                        Text(
                          "Share your metrics with out team",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      inactiveThumbColor: MyColor.whiteColor,
                      activeTrackColor: MyColor.splashBacColor,
                      activeColor: MyColor.whiteColor,
                      value: isSelectOne,
                      onChanged: (value) {
                        setState(() {
                          isSelectOne = value;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.splashBacColor),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Est. Calorie Burn",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.whiteColor, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "We estimated that you'll burn\n250kcal with this. ",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: MyColor.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                  color: MyColor.whiteColor.withAlpha(150),
                                  spreadRadius: 4)
                            ]),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "250",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.blackColor, fontSize: 24),
                                ),
                                Text(
                                  "kcal",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.splashBacColor,
                                      fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.activityScreenPageFourteen);
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
                          "Start weightlifting",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.addIcon,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
