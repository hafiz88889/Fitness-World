import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageThreeBottomsheet extends StatefulWidget {
  const PageThreeBottomsheet({super.key});

  @override
  State<PageThreeBottomsheet> createState() => _PageThreeBottomsheetState();
}
RangeValues _selectedRange = const RangeValues(10, 15);
final List<Map<String,dynamic>>workoutType=[
  {"image":MyImage.joggingIcon},
  {"image":MyImage.wakingIcon},
  {"image":MyImage.skatingIcon},
  {"image":MyImage.bikingIcon},
  {"image":MyImage.weightLiftIcon},
  {"image":MyImage.hikingIcon},
];
final List<String> bodyParts = [
  "Upper Body",
  "Lower Body",
  "Medium",
];
int selectIndex = 1;
int selectIndexTwo = 1;
String selectItem="Most Popular";
List<String>category=["Most Popular","Walking","Biking","Weight lifting"];
class _PageThreeBottomsheetState extends State<PageThreeBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(60)),
        color: MyColor.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColor.grayColor.withAlpha(150)
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Filter Workout",style: regularTextStyle24.copyWith(fontSize: 22),),
              Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,width: 25,color: MyColor.grayColor.withAlpha(150),)
            ],
          ),
          const SizedBox(height: 30,),
          Text("Filterd by",style: regularTextStyle24,),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColor.borderColor,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  dropdownColor: MyColor.whiteColor,
                  icon: Transform.rotate(angle: -1.5,
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                  value: selectItem,
                  isExpanded: true,
                  items:category.map((String selected){
                    return DropdownMenuItem(
                      value: selected,
                      child: Text(selected),
                    );
                  }).toList(),
                  onChanged: (String? newValue){
                    setState(() {
                      selectItem=newValue!;
                    });
                  }),
            ),
          ),
          const SizedBox(height: 20,),
          Text("Workout Type",style: regularTextStyle24,),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: workoutType.length,
              itemBuilder: (context, index) {
                bool isSelect=index==selectIndexTwo;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectIndexTwo=index;
                    });
                  },
                  child: Container(
                    width: 66,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isSelect?MyColor.blackColor:MyColor.borderColor.withAlpha(150),
                        boxShadow: [
                          BoxShadow(
                            color: isSelect?MyColor.grayColor.withAlpha(100):Colors.transparent,
                            spreadRadius: isSelect?3:0,
                          )
                        ]
                    ),
                    child: SvgPicture.asset(workoutType[index]["image"],colorFilter: ColorFilter.mode(isSelect?MyColor.whiteColor:MyColor.grayColor, BlendMode.srcIn),),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15,),
          Text("Body Parts",style: regularTextStyle24,),
          const SizedBox(height: 10,),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount:3,
                itemBuilder: (context, index) {
                  bool isSelected=index==selectIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectIndex=index;
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
                          Text(bodyParts[index],
                              style: regularTextStyle18.copyWith(
                                  color: isSelected
                                      ? MyColor.whiteColor
                                      : MyColor.blackColor)),
                          const SizedBox(width: 8),
                          Image(
                            image: AssetImage(isSelected
                                ? MyImage.radioButtonFilled
                                : MyImage.radioButtonNotFilled),
                            height: 25,
                            width: 25,
                            color: isSelected
                                ? MyColor.whiteColor
                                : MyColor.blackColor,
                          )
                        ],
                      ),
                    ),
                  );
                },),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Workout Duration",style: regularTextStyle24,),
              Text("minutes",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
            ],
          ),
          RangeSlider(
            labels:const RangeLabels("0", "15"),
            values: _selectedRange,
            min: 0,
            max: 60,
            divisions: 4,
            activeColor: MyColor.splashBacColor,
            inactiveColor:MyColor.borderColor,
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
              Text("Calorie Burn",style: regularTextStyle24,),
              Text("kcal",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
            ],
          ),
          RangeSlider(
            labels:const RangeLabels("0", "15"),
            values: _selectedRange,
            min: 0,
            max: 60,
            divisions: 4,
            activeColor: MyColor.splashBacColor,
            inactiveColor:MyColor.borderColor,
            onChanged: (RangeValues values) {
              setState(() {
                _selectedRange = values;
              });
            },
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, RouteHelper.workotTrainingPageFour);
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
                    "Apply Filter(25)",
                    style: regularTextStyle18.copyWith(
                        color: MyColor.whiteColor, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage(MyImage.filterIcon),height: 25,width: 25,color: MyColor.whiteColor,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
