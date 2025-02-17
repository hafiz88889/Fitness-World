import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FitlerActivityModelbottomsheetWidget extends StatefulWidget {
  const FitlerActivityModelbottomsheetWidget({super.key});

  @override
  State<FitlerActivityModelbottomsheetWidget> createState() => _FitlerActivityModelbottomsheetWidgetState();
}
RangeValues _selectedRange = const RangeValues(10, 15);
final List<String> accountTypes = [
  "Very High",
  "High",
  "Medium",
];
int selectIndex = 1;
String selectItem="Jogging";
List<String>category=["Jogging","Walking","Biking","Weight lifting"];
class _FitlerActivityModelbottomsheetWidgetState extends State<FitlerActivityModelbottomsheetWidget> {
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
              Text("Filter Activities",style: regularTextStyle24.copyWith(fontSize: 22),),
              Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,width: 25,color: MyColor.grayColor.withAlpha(150),)
            ],
          ),
          const SizedBox(height: 40,),
         Row(
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Date (From)",style: regularTextStyle24,),
                 Container(
                   padding: const EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: MyColor.borderColor,
                   ),
                   child: Row(
                     children: [
                       Image(image: AssetImage(MyImage.calenderIcon),height: 20,width: 20,color: MyColor.blackColor,),
                       Text("20/12/2050",style: regularTextStyle18,)
                     ],
                   ),
                 ),
               ],
             ),
             const SizedBox(width: 20,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Date (To)",style: regularTextStyle24,),
                 Container(
                   padding: const EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: MyColor.borderColor,
                   ),
                   child: Row(
                     children: [
                       Image(image: AssetImage(MyImage.calenderIcon),height: 20,width: 20,color: MyColor.blackColor,),
                       Text("28/12/2050",style: regularTextStyle18,)
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
          const SizedBox(height: 30,),
          Text("Activity Type",style: regularTextStyle24,),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Filter Duration",style: regularTextStyle24,),
              Text("Minutes",style: regularTextStyle18.copyWith(fontSize: 16),),
            ],
          ),
          const SizedBox(height: 15,),
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


          Text("Calorie Burn",style: regularTextStyle24,),
          const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(accountTypes.length, (index) {
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
                        Text(accountTypes[index],
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
              }),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, RouteHelper.activityTrackerPageNine);
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
                    "Apply Filter(125)",
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
