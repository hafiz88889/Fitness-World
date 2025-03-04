import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalizePageSeven extends StatefulWidget {
  const PersonalizePageSeven({super.key});

  @override
  State<PersonalizePageSeven> createState() => _PersonalizePageSevenState();
}
RangeValues _selectedRange = const RangeValues(10, 15);
final List<Map<String,dynamic>> bodyParts = [
  {"gender":"Male","image":MyImage.radioButtonNotFilled},
  {"gender":"Female","image":MyImage.radioButtonNotFilled},
  {"gender":"AI/ML","image":MyImage.radioButtonNotFilled},

];
int selectIndex = 1;
String selectItem = "Cardio & Conditional";
List<String> category = ["Cardio & Conditional", "Walking", "Biking", "Weight lifting"];
String selectItem2 = "Popularity(Height First)";
List<String> category2 = ["Popularity(Height First)", "Walking", "Biking", "Weight lifting"];
class _PersonalizePageSevenState extends State<PersonalizePageSeven> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        color: MyColor.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 70,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.grayColor.withAlpha(150)
              ),
            ),
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Filter Couch Search",style: regularTextStyle24,),
              Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(100),)
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Height",style: regularTextStyle24.copyWith(fontSize: 16),),
              Text("cm",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),),
            ],
          ),
          const SizedBox(height: 10,),
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
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Gender",style: regularTextStyle24.copyWith(fontSize: 16),),
              Text("Choice 1",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),),
            ],
          ),
          const SizedBox(height: 15,),
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
                     Image(image: AssetImage(bodyParts[index]["image"])),
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
          const SizedBox(height: 15,),
          Text("Expertises Area",style: regularTextStyle24.copyWith(fontSize: 16),),
          const SizedBox(height: 10,),
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
          const SizedBox(height: 15,),
          Text("Short By",style: regularTextStyle24.copyWith(fontSize: 16),),
          const SizedBox(height: 10,),
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
                      selectItem = newValue!;
                    });
                  }),
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () {
           Navigator.pushNamed(context, RouteHelper.personalizePageSeven);
              },
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all(MyColor.splashBacColor),
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
                 Image(image: AssetImage(MyImage.filterIcon),height: 25,color: MyColor.whiteColor,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
