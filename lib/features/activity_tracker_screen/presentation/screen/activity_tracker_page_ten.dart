import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/activity_tracker_page_ten_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityTrackerPageTen extends StatefulWidget {
  const ActivityTrackerPageTen({super.key});

  @override
  State<ActivityTrackerPageTen> createState() => _ActivityTrackerPageTenState();
}

class _ActivityTrackerPageTenState extends State<ActivityTrackerPageTen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: MyColor.blackColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.whiteColor.withAlpha(150),
                        ),
                        child: SvgPicture.asset(
                          MyImage.backIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.whiteColor, BlendMode.srcIn),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "AI Suggestions",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 60,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: MyColor.grayColor.withAlpha(150)),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                              color: MyColor.grayColor,
                              borderRadius: BorderRadius.circular(25)),
                          labelColor: MyColor.whiteColor,
                          unselectedLabelColor:
                              MyColor.borderColor.withAlpha(100),
                          tabs: const [
                            Text(
                              "Special",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("All"),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteHelper.activityScreenPageEleven);
                },
                child: ActivityTrackerPageTenWidget(
                  image: MyImage.runningMan,
                  icon: MyImage.joggingIcon,
                  iconText: "Jogging",
                  title1: "Morning Boost",
                  time: "30min",
                  calorie: "787kcal",
                ),
              ),
              ActivityTrackerPageTenWidget(
                image: MyImage.runningWoman,
                icon: MyImage.yogaIcon,
                iconText: "Yoga",
                title1: "Middy Stretch",
                time: "15min",
                calorie: "57kcal",
              ),
              ActivityTrackerPageTenWidget(
                image: MyImage.gymMan,
                icon: MyImage.joggingIcon,
                iconText: "Boxing",
                title1: "Morning Boost",
                time: "30min",
                calorie: "787kcal",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
