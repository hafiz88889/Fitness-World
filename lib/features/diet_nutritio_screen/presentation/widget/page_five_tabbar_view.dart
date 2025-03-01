import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';
import '../../../sing_in_sign_up_screen/presentation/widget/text_field.dart';

class PageFiveTabbarView extends StatefulWidget {
  const PageFiveTabbarView({super.key});

  @override
  State<PageFiveTabbarView> createState() => _PageFiveTabbarViewState();
}
bool isSelect=false;
final TextEditingController _controller=TextEditingController();
int isMin=0;
int isMax=500;
RangeValues _selectedRange = const RangeValues(10, 20,);
int selectIndex = 1;
final List<Map<String, dynamic>> items = [
  { "text": "Breakfast"},
  { "text": "Dinner"},
  { "text": "Snack"},
  { "text": "Lunch"},

];

class _PageFiveTabbarViewState extends State<PageFiveTabbarView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GlobalTextFieldWidget(
              title: "Meal Name",
              hintText: "Enter Your Meal Name..",
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  MyImage.resturentIcon,
                  colorFilter: ColorFilter.mode(
                      MyColor.blackColor, BlendMode.srcIn),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Meal Type", style: regularTextStyle24),
                Text("Select 1",
                    style: regularTextStyle18.copyWith(
                        color: MyColor.grayColor, fontSize: 16)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 66,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
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
                          Text(items[index]["text"],
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
                              color: isSelected
                                  ? MyColor.whiteColor
                                  : MyColor.blackColor)
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
                Text("Total Protein",style: regularTextStyle24),
                Text("gram",style: regularTextStyle18.copyWith(fontSize: 19,color: MyColor.grayColor),),
              ],
            ),
            RangeSlider(
              labels: const RangeLabels("0", "15",),
              values: _selectedRange,
              min: 0,
              max: 30,
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
                Text("Total Crabs",style: regularTextStyle24),
                Text("gram",style: regularTextStyle18.copyWith(fontSize: 19,color: MyColor.grayColor),),
              ],
            ),
            RangeSlider(
              labels: const RangeLabels("0", "15",),
              values: _selectedRange,
              min: 0,
              max: 30,
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
                Text("Total Calorie",style: regularTextStyle24),
                Text("kilocalorie",style: regularTextStyle18.copyWith(fontSize: 19,color: MyColor.grayColor),),
              ],
            ),
            RangeSlider(
              labels: const RangeLabels("0", "15",),
              values: _selectedRange,
              min: 0,
              max: 30,
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
      
            Text("Meal Thumbnail",style: regularTextStyle24,),
            const SizedBox(height: 10,),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(30),
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child:SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 30,),
                    ),
                  )
              ),
            ),
            const SizedBox(height: 15,),
            Text("Additional Note",style: regularTextStyle24,),
            const SizedBox(height: 10,),
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
                        hintText: "What would you like our AI to know about you to provide better response?",
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
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Text("Suggest Recommendation?",style: regularTextStyle24),
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
          ],
        ),
      ),
    );
  }
}
