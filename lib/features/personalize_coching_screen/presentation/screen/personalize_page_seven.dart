import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PersonalizePageSeven extends StatefulWidget {
  const PersonalizePageSeven({super.key});

  @override
  State<PersonalizePageSeven> createState() => _PersonalizePageSevenState();
}
final TextEditingController _controller=TextEditingController();
int isMin=0;
int isMax=250;

RangeValues _selectedRange = const RangeValues(10, 15);
int selectIndex2 = 1;
String selectItem = "24 Jan 2025";
List<String> category = [ "24 Jan 2025", "Walking", "Biking", "Weight lifting"];
final List<Map<String,dynamic>> bodyParts = [
  {"gender":"Male","image":MyImage.radioButtonNotFilled},
  {"gender":"Female","image":MyImage.radioButtonNotFilled},
  {"gender":"AI/ML","image":MyImage.radioButtonNotFilled},

];
int selectIndex = 1;
class _PersonalizePageSevenState extends State<PersonalizePageSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(50),
                    ),
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                ),
                Text(
                  "Book Couch",
                  style: regularTextStyle24.copyWith(fontSize: 24),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.grayColor.withAlpha(50),
                    ),
                    child: SvgPicture.asset(MyImage.settingIcn),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: MyColor.splashBacColor.withAlpha(50),
                              spreadRadius: 3
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color:MyColor.orangeColor
                    ),
                    child: Image(image: AssetImage(MyImage.dotIcon),height: 30,width: 30,color: MyColor.whiteColor,)
                ),
        
                Container(
                  width: 80,
                  height: 4,
                  color: MyColor.splashBacColor,
                ),
                Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.all(5),
                    //padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: MyColor.whiteColor,
                              spreadRadius: 5
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                       border: Border.all(color: MyColor.grayColor)
                    ),
                    child: Image(image: AssetImage(MyImage.dotIcon),height: 30,width: 30,color: MyColor.grayColor,)
                ),
        
                Container(
                  width: 80,
                  height: 4,
                  color: MyColor.grayColor,
                ),
                Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: MyColor.whiteColor,
                              spreadRadius: 5
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: MyColor.grayColor)
                    ),
                    child: Image(image: AssetImage(MyImage.dotIcon),height: 30,width: 30,color: MyColor.grayColor,)
                ),
        
              ],
            ),
            const SizedBox(height: 15,),
          Container(
            margin:const EdgeInsets.only(bottom:15),
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColor.borderColor
            ),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(MyImage.ladyProfile),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.whiteColor
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.grayColor.withAlpha(50)
                        ),
                        child:Text("Human",style: regularTextStyle18.copyWith(fontSize: 14),),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Md Hafiz",style: regularTextStyle24,),
                          const SizedBox(width: 7,),
                          Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.blackColor,height: 20,width: 20,)
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Image(image: AssetImage(MyImage.star),height: 20,color: MyColor.orangeColor,),
                          const SizedBox(width: 8,),
                          Text("4.5",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                          const SizedBox(width: 20,),
                          Image(image: AssetImage(MyImage.userIconTwo),height: 20,color: MyColor.splashBacColorTwo,),
                          const SizedBox(width: 10,),
                          Text("21 Client",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                    angle: -3,
                    child: SvgPicture.asset(MyImage.backIcon,height: 25,))
              ],
            ),
          ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Personal Information",style: regularTextStyle24.copyWith(fontSize: 16),),
                Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(150),),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Full Name",style: regularTextStyle18.copyWith(fontSize: 16,),),
                TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(50),width: 7,)
                          ),
                          border: const OutlineInputBorder(),
                          filled: true,
                          fillColor: MyColor.hintColor.withAlpha(20),
                          hintText: "Md Hafiz",hintStyle: regularTextStyle18.copyWith(color: MyColor.hintColor),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(image: AssetImage(MyImage.userIcon),height: 25,),
                          ),
                        ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email",style: regularTextStyle18.copyWith(fontSize: 16,),),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(50),width: 7,)
                    ),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: MyColor.hintColor.withAlpha(20),
                    hintText: "info@gmail.com",hintStyle: regularTextStyle18.copyWith(color: MyColor.hintColor),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(MyImage.emailIcon),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number",style: regularTextStyle18.copyWith(fontSize: 16,),),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyColor.hintColor.withAlpha(0)),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: MyColor.splashBacColor.withAlpha(50),width: 7,)
                    ),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: MyColor.hintColor.withAlpha(20),
                    hintText: "+99458245",hintStyle: regularTextStyle18.copyWith(color: MyColor.hintColor),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(MyImage.five),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
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
                  bool isSelected = index == selectIndex2;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIndex2 = index;
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
                Text("Weight",style: regularTextStyle24.copyWith(fontSize: 16),),
                Text("kg",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),),
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
            Text("Date of Birth",style: regularTextStyle24.copyWith(fontSize: 16),),
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
            const Divider(),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Additional Information",style: regularTextStyle24.copyWith(fontSize: 16),),
                Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(150),),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyColor.borderColor
              ),
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    maxLines: null,
                    maxLength: isMax,
                    onChanged: (value){
                      setState(() {
                        isMin=value.length;
                      });
                    },
                    style: regularTextStyle18,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "I can’t do more than 22 squats",
                        hintStyle: regularTextStyle18.copyWith(color: MyColor.grayColor.withAlpha(100)),
                        counterText: ""
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(MyImage.copyIcon),
                      Text("$isMin/$isMax",style: regularTextStyle18.copyWith(
                          fontSize: 16,fontWeight: FontWeight.w700,color: MyColor.blackColor.withAlpha(100)
                      ),),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.personalizePageEight);
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
                      "Continue",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
      ),
    );
  }
}
