import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenTwelveBottomsheet extends StatefulWidget {
  const ScreenTwelveBottomsheet({super.key});

  @override
  State<ScreenTwelveBottomsheet> createState() => _ScreenTwelveBottomsheetState();
}
int selectedIndex = 1;
bool isSelect=true;
final List<Map<String, dynamic>> supplement = [
  {"text": "Whey"},
  {"text": "Protein"},
  {"text": "BCAAs"},
  {"text": "Vitamin D"},
  {"text": "Magnesium"},
];
final List<String> selectedSupplements = ["BCAAs", "Omega-3"];
class _ScreenTwelveBottomsheetState extends State<ScreenTwelveBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        color: MyColor.whiteColor
      ),
      child: Column(
        children: [
          Container(
            height: 6,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColor.grayColor.withAlpha(150)
            ),
          ),
          const SizedBox(height: 50,),
          Text("All Supplements",style: regularTextStyle24.copyWith(color: MyColor.blackColor.withAlpha(250)),),
          const SizedBox(height: 24,),
          GlobalTextFieldWidget(title: "", hintText: "Search supplements...",suffix:Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(MyImage.searchIcon),
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: supplement.length,
              itemBuilder: (context, index) {
                bool isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? MyColor.splashBacColorTwo
                          : MyColor.grayColor.withAlpha(15),
                      borderRadius: BorderRadius.circular(25),
                      border: isSelected
                          ? Border.all(
                          color: MyColor.whiteColor.withAlpha(150), width: 5)
                          : Border.all(
                          color: MyColor.grayColor.withAlpha(0),
                          width: 2),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            supplement[index]["text"],
                            style: regularTextStyle18.copyWith(
                              fontSize: 16,
                              color: isSelected
                                  ? MyColor.whiteColor
                                  : MyColor.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          isSelected
                              ? Icons.radio_button_checked
                              : Icons.radio_button_unchecked,
                          color: isSelected
                              ? MyColor.whiteColor
                              : MyColor.grayColor,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteHelper.screenThirteen);
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
                    "Continue",
                    style: regularTextStyle18.copyWith(
                        color: MyColor.whiteColor, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    MyImage.arrowRight,
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
