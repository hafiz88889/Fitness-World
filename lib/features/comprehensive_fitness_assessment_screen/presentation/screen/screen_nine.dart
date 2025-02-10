import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenNine extends StatefulWidget {
  const ScreenNine({super.key});

  @override
  State<ScreenNine> createState() => _ScreenNineState();
}
final List<Map<String, dynamic>> item = [
  {"image": MyImage.leafIcon, "text": "This no moe","text2": "TVegan"},
  {"image": MyImage.dietICon, "text": "Carbo Diet","text2": "Bread, etc"},
  {"image": MyImage.resturentIcon, "text": "Specialized","text2": "Paleo, keto, etc"},
  {"image": MyImage.tradionalIcon, "text": "Traditional","text2": "Fruit diet"},
];
int selectedIndex = 4;
List<int>number=[
  1,2,3,4,5
];
class _ScreenNineState extends State<ScreenNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
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
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Assessment",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.splashBacColorTwo.withAlpha(30)),
                  child: Text(
                    "9 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "How many days/wk will you commit?",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("5",style: regularTextStyle24.copyWith(fontSize: 150),),
                Text("X",style: regularTextStyle24.copyWith(fontSize: 80),),
              ],
            ),
            const SizedBox(height: 100,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:MyColor.grayColor.withAlpha(50),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: isSelected?MyColor.borderColor:Colors.transparent,width: isSelected? 5:0),
                          borderRadius: BorderRadius.circular(20),
                          color: isSelected ? MyColor.splashBacColorTwo : Colors.transparent,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                           "1"
                        )));
                }),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text("I’m commited to exercising 5x weekly",style: regularTextStyle18.copyWith(fontSize: 18),),
            const SizedBox(height: 30,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.screenTen);
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
                      colorFilter:
                          ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
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
