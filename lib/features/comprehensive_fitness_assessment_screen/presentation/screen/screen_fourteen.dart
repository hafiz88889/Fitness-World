import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenFourteen extends StatefulWidget {
  const ScreenFourteen({super.key});

  @override
  State<ScreenFourteen> createState() => _ScreenFourteenState();
}

class _ScreenFourteenState extends State<ScreenFourteen> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> options = [
    {"icon": MyImage.emojiIconOne,"icon2": MyImage.watchIcon, "text": "Excellent","text2": ">8 hours"},
    {"icon": MyImage.emojiIconOne,"icon2": MyImage.watchIcon, "text": "Great","text2": "7-8 hours"},
    {"icon": MyImage.emojiIconOne,"icon2": MyImage.watchIcon, "text": "Normal","text2": "6-7 hours"},
    {"icon": MyImage.emojiIconOne,"icon2": MyImage.watchIcon, "text": "Bad","text2": "3-4 hours"},
    {"icon": MyImage.emojiIconOne,"icon2": MyImage.watchIcon, "text": "Insomniac","text2": "<2 hours"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                    "14 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo, fontSize: 14),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "What’s your sleep quality like?",
              textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: options.length,
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
                            ? MyColor.splashBacColor
                            : MyColor.grayColor.withAlpha(15),
                        borderRadius: BorderRadius.circular(25),
                        border: isSelected
                            ? Border.all(
                                color: MyColor.splashBacColor, width: 2)
                            : Border.all(
                                color: MyColor.grayColor.withAlpha(0),
                                width: 2),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            options[index]["icon"],
                            colorFilter: ColorFilter.mode(
                                isSelected
                                    ? MyColor.whiteColor
                                    : MyColor.grayColor.withAlpha(150),
                                BlendMode.srcIn),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              options[index]["text"],
                              style: regularTextStyle18.copyWith(
                                fontSize: 16,
                                color: isSelected
                                    ? MyColor.whiteColor
                                    : MyColor.blackColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SvgPicture.asset(options[index]["icon2"],colorFilter: ColorFilter.mode(isSelected?MyColor.whiteColor:MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                          const SizedBox(width: 8,),
                          Text(options[index]["text2"],style: regularTextStyle24.copyWith(fontSize: 14,color: isSelected?MyColor.whiteColor:MyColor.grayColor),)
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
                  Navigator.pushNamed(context, RouteHelper.screenFifteen);
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
      ),
    );
  }
}
