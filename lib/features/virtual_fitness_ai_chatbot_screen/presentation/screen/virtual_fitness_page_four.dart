import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class VirtualFitnessPageFour extends StatefulWidget {
  const VirtualFitnessPageFour({super.key});

  @override
  State<VirtualFitnessPageFour> createState() => _VirtualFitnessPageFourState();
}
bool isSelect=false;
final List<String> bodyParts = [
  "Organic",
  "Formal",
  "Professional",
];
int selectIndex = 1;
final List<Map<String, dynamic>> workoutType = [
  {"image": MyImage.joggingIcon},
  {"image": MyImage.wakingIcon},
  {"image": MyImage.skatingIcon},
  {"image": MyImage.bikingIcon},
  {"image": MyImage.weightLiftIcon},
  {"image": MyImage.hikingIcon},
];
int selectIndexTwo = 1;
RangeValues _selectedRange = const RangeValues(10, 15);
final List<String> supplements = [
  "GPT-6",
  "Baby AI",
  "LLamp4",
  "Barda",
  "PaLm4",
  "Privet GPT",
];
final List<String> selectedSupplements = ["BCAAs", "Omega 2"];
String selectItem = "Most Popular";
List<String> category = ["Most Popular", "Walking", "Biking", "Weight lifting"];

class _VirtualFitnessPageFourState extends State<VirtualFitnessPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 180,
              width: double.infinity,
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
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "New Chat",
                    style: regularTextStyle24.copyWith(
                        fontSize: 24, color: MyColor.whiteColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalTextFieldWidget(
                    title: "Topic Name",
                    hintText: "How to gain more build",
                    prefix: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(MyImage.copyIcon),
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(MyImage.editIcon),
                        height: 20,
                        width: 20,
                        color: MyColor.grayColor.withAlpha(150),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "AI Model",
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "AI LLM Chatbot",
                        style: regularTextStyle24,
                      ),
                      Text(
                        "Select Up to 3",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.grayColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: supplements.map((supplement) {
                        final isSelected =
                            selectedSupplements.contains(supplement);
                        return ChoiceChip(
                          labelPadding: EdgeInsets.all(8),
                          showCheckmark: false,
                          padding: EdgeInsets.zero,
                          label: SizedBox(
                            height: 50,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(supplement),
                                const SizedBox(
                                  width: 15,
                                ),
                                Image(
                                  image: AssetImage(isSelected
                                      ? MyImage.radioButtonFilled
                                      : MyImage.radioButtonNotFilled),
                                  color: isSelected
                                      ? MyColor.whiteColor
                                      : MyColor.blackColor,
                                  height: 25,
                                  width: 25,
                                )
                              ],
                            ),
                          ),
                          selected: isSelected,
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                selectedSupplements.add(supplement);
                              } else {
                                selectedSupplements.remove(supplement);
                              }
                            });
                          },
                          selectedColor: MyColor.splashBacColor,
                          backgroundColor: MyColor.borderColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: isSelected
                                      ? MyColor.whiteColor.withAlpha(100)
                                      : Colors.transparent,
                                  width: isSelected ? 5 : 0)),
                          labelStyle: regularTextStyle24.copyWith(
                              color: isSelected
                                  ? MyColor.whiteColor
                                  : MyColor.grayColor),
                        );
                      }).toList()),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "AI Taken Limit",
                        style: regularTextStyle24,
                      ),
                      Text(
                        "Times",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.grayColor),
                      ),
                    ],
                  ),
                  RangeSlider(
                    labels: const RangeLabels("0", "15"),
                    values: _selectedRange,
                    min: 0,
                    max: 60,
                    divisions: 4,
                    activeColor: MyColor.splashBacColor,
                    inactiveColor: MyColor.borderColor,
                    onChanged: (RangeValues values) {
                      setState(() {
                        _selectedRange = values;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Workout Type",
                    style: regularTextStyle24,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: workoutType.length,
                      itemBuilder: (context, index) {
                        bool isSelect = index == selectIndexTwo;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectIndexTwo = index;
                            });
                          },
                          child: Container(
                            width: 66,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isSelect
                                    ? MyColor.splashBacColorTwo
                                    : MyColor.borderColor.withAlpha(150),
                                boxShadow: [
                                  BoxShadow(
                                    color: isSelect
                                        ? MyColor.grayColor.withAlpha(100)
                                        : Colors.transparent,
                                    spreadRadius: isSelect ? 3 : 0,
                                  )
                                ]),
                            child: SvgPicture.asset(
                              workoutType[index]["image"],
                              colorFilter: ColorFilter.mode(
                                  isSelect
                                      ? MyColor.whiteColor
                                      : MyColor.grayColor,
                                  BlendMode.srcIn),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GlobalTextFieldWidget(
                    title: "Topic Name",
                    hintText: "How to gain more build",
                    prefix: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.person_2,
                        color: MyColor.grayColor,
                      ),
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(MyImage.editIcon),
                        height: 20,
                        width: 20,
                        color: MyColor.grayColor.withAlpha(150),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Chest Gain ",
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
                    height: 15,
                  ),
                  Text(
                    "Communication Style",
                    style: regularTextStyle24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 66,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
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
                                SvgPicture.asset(
                                  MyImage.fireIcon,
                                  colorFilter: ColorFilter.mode(
                                      isSelected
                                          ? MyColor.whiteColor
                                          : MyColor.grayColor,
                                      BlendMode.srcIn),
                                ),
                                Text(bodyParts[index],
                                    style: regularTextStyle18.copyWith(
                                        color: isSelected
                                            ? MyColor.whiteColor
                                            : MyColor.blackColor)),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Make Chat Public",style: regularTextStyle24),
                      const Spacer(),
                      Switch(
                        inactiveThumbColor: MyColor.whiteColor,
                        activeTrackColor: MyColor.splashBacColor,
                        activeColor: MyColor.whiteColor,
                        value: isSelect,
                        onChanged: (value){
                          setState(() {
                            isSelect=value;
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 25,),
                  SizedBox(
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.virtualFitnessPageFive);
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
                            "Create New Conversation",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                          )
                        ],
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
