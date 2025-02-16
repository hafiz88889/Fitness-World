import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetRouteBottomsheetWidget extends StatefulWidget {
  const SetRouteBottomsheetWidget({super.key});

  @override
  State<SetRouteBottomsheetWidget> createState() => _SetRouteBottomsheetWidgetState();
}
String selectedGender = "8001,New york";
List<String> genders = ["Washington DC", "Texas", "Pensilvenia", "Florida", "8001,New york"];
class _SetRouteBottomsheetWidgetState extends State<SetRouteBottomsheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColor.borderColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 70,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.grayColor.withAlpha(100)
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Edit Route",style: regularTextStyle24,),
              Image(image: AssetImage(MyImage.questionMarkIcon),height: 20,width: 20,color: MyColor.grayColor,)
            ],
          ),
          const SizedBox(height: 20,),
          Text("From",style: regularTextStyle24,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.grayColor.withAlpha(10)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: MyColor.whiteColor,
                icon: Transform.rotate(angle: -1.5,
                  child: SvgPicture.asset(MyImage.backIcon),
                ),
                value: selectedGender,
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
                items: genders.map((String gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Text("To",style: regularTextStyle24,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyColor.grayColor.withAlpha(10)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: MyColor.whiteColor,
                icon: Transform.rotate(angle: -1.5,
                  child: SvgPicture.asset(MyImage.backIcon),
                ),
                value: selectedGender,
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
                items: genders.map((String gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () {
              //  Navigator.pushNamed(context, RouteHelper.screenFour);
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
