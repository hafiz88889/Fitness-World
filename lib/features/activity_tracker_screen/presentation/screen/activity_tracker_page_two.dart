import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerPageTwo extends StatefulWidget {
  const ActivityTrackerPageTwo({super.key});

  @override
  State<ActivityTrackerPageTwo> createState() => _ActivityTrackerPageTwoState();
}

class _ActivityTrackerPageTwoState extends State<ActivityTrackerPageTwo> {
  final List<Map<String, dynamic>> item = [
    {"image": MyImage.joggingIcon, "text": "Jogging",},
    {"image": MyImage.wakingIcon, "text": "Walking",},
    {"image": MyImage.hikingIcon, "text": "Hiking",},
    {"image": MyImage.skatingIcon, "text": "Skating",},
    {"image": MyImage.bikingIcon, "text": "Biking",},
    {"image": MyImage.weightLiftIcon, "text": "Weightlift",},
    {"image": MyImage.cardioIcon, "text": "Cardio",},
    {"image": MyImage.yogaIcon, "text": "Yoga",},
    {"image": MyImage.otherIcon, "text": "Other",},

  ];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
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
                child: SvgPicture.asset(MyImage.backIcon),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Add new Activity",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Please Select Activity",
                textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: item.length,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: isSelected
                              ? MyColor.splashBacColor
                              : MyColor.grayColor.withAlpha(30),
                          border: Border.all(
                              color: isSelected
                                  ? MyColor.whiteColor.withAlpha(150)
                                  : MyColor.grayColor.withAlpha(0),
                              width: isSelected ? 8 : 0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(item[index]["image"],colorFilter: ColorFilter.mode(isSelected? MyColor.whiteColor:MyColor.grayColor.withAlpha(120), BlendMode.srcIn),),
                          Text(
                            item[index]["text"],
                            style: regularTextStyle18.copyWith(
                                color: isSelected
                                    ? MyColor.whiteColor
                                    : MyColor.grayColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 5,),

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
                  Navigator.pushNamed(context, RouteHelper.activityTrackerPageThree);
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
