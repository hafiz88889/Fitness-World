import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBottomsheet extends StatefulWidget {
  const SearchBottomsheet({super.key});

  @override
  State<SearchBottomsheet> createState() => _SearchBottomsheetState();
}
bool isSelect=false;
RangeValues _selectedRange = const RangeValues(10, 15);
final List<Map<String, dynamic>> bodyParts = [
  {
    "image": MyImage.weightLiftIcon,
    "gender": "Workout",
  },
  {
    "image": MyImage.resturentIcon,
    "gender": "Meal",
  },
  {
    "image": MyImage.weightLiftIcon,
    "gender": "Workout",
  },
  {
    "image": MyImage.weightLiftIcon,
    "gender": "Workout",
  },
];
int selectIndex = 1;
String selectItem2 = "Popularity(Height First)";
class _SearchBottomsheetState extends State<SearchBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
        color: MyColor.whiteColor,
      ),
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
                "Filter Search Result",
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
          Row(
            children: [
              Expanded(
                child: GlobalTextFieldWidget(
                  title: "From",
                  hintText: "2025/12/16",
                  prefix: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(MyImage.calenderIcon),
                      height: 25,
                      color: MyColor.blackColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GlobalTextFieldWidget(
                  title: "To",
                  hintText: "2025/12/16",
                  prefix: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(MyImage.calenderIcon),
                      height: 25,
                      color: MyColor.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Serch Limit",
            style: regularTextStyle24.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 10,
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
            height: 15,
          ),
          Text(
            "Search Categories",
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
                          height: 25,
                        ),
                        const SizedBox(
                          width: 10,
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
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text("Including AI Suggestion",style: regularTextStyle24),
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
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteHelper.errorPageOne);
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
    );
  }
}
