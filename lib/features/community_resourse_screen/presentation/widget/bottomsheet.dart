import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

final List<Map<String, dynamic>> bodyParts = [
  {"gender": "Workout", "image": MyImage.weightLiftIcon},
  {"gender": "Meal", "image": MyImage.resturentIcon},
  {"gender": "Community", "image": MyImage.cardioIcon},
];
int selectIndex = 1;
String selectItem = "25 Jan 2025";
List<String> category = [
  "25 Jan 2025",
  "26 Jan 2025",
  "27 Jan 2025",
  "30 Jan 2025"
];
String selectItem2 = "Gallery";
List<String> category2 = ["Gallery", "Walking", "Biking"];

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
        color: MyColor.whiteColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 4,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.grayColor.withAlpha(150)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filter Post",
                  style: regularTextStyle24,
                ),
                Image(
                  image: AssetImage(MyImage.questionMarkIcon),
                  height: 25,
                  color: MyColor.grayColor.withAlpha(100),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "From",
              style: regularTextStyle24.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
              "To",
              style: regularTextStyle24.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                    value: selectItem2,
                    isExpanded: true,
                    items: category2.map((String selected) {
                      return DropdownMenuItem(
                        value: selected,
                        child: Text(selected),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem2 = newValue!;
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Post Categories",
              style: regularTextStyle24.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 15,
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
                            bodyParts[index]["image"],
                            colorFilter: ColorFilter.mode(
                                isSelected
                                    ? MyColor.whiteColor
                                    : MyColor.grayColor,
                                BlendMode.srcIn),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(bodyParts[index]["gender"],
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
            const SizedBox(height: 40,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
              //    Navigator.pushNamed(context, RouteHelper.personalizePageSeven);
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
                      "Apply Filter (32)",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage(MyImage.filterIcon),
                      height: 25,
                      color: MyColor.whiteColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
