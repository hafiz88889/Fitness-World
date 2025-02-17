import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/fitler_activity_modelbottomsheet_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/step_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class ActivityTrackerPageEight extends StatelessWidget {
  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
  );

  ActivityTrackerPageEight({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
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
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My activities",
                      style: regularTextStyle24.copyWith(fontSize: 30)),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(MyImage.calenderIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.grayColor,
                        ),
                        Text(
                          "date",
                          style: regularTextStyle18.copyWith(
                              fontSize: 14, color: MyColor.grayColor),
                        ),
                        Transform.rotate(
                            angle: -1.5,
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.grayColor, BlendMode.srcIn),
                              height: 20,
                              width: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: ScrollableCleanCalendar(
                  daySelectedBackgroundColor: MyColor.splashBacColor,
                  dayDisableBackgroundColor: MyColor.splashBacColor,
                  calendarController: calendarController,
                  layout: Layout.BEAUTY,
                  calendarCrossAxisSpacing: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColor.splashBacColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Complete",
                    style: regularTextStyle18.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColor.blackColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Skipped",
                    style: regularTextStyle18.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColor.splashBacColorTwo),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Challenge",
                    style: regularTextStyle18.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(MyImage.bodyImage),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "75+",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 36),
                    ),
                    Text(
                      "AI suggestion",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.joggingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.skatingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.bikingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity History",
                    style: regularTextStyle24.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Most Recent",
                    style: regularTextStyle18.copyWith(
                        fontSize: 14, color: MyColor.grayColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              StepHistoryWidget(
                  title1: "Chest Workout at Gold's Gym",
                  title2: "872kcal",
                  title3: "2d ago",
                  image: MyImage.weightLiftIcon,
                  color: MyColor.splashBacColor,
              ),
              StepHistoryWidget(
                title1: "Jogging to 221b Elecmentary...",
                title2: "872kcal",
                title3: "2d ago",
                image: MyImage.joggingIcon,
                color: MyColor.beguniColor,
              ),
              StepHistoryWidget(
                title1: "Biking to mt. Edna",
                title2: "872kcal",
                title3: "2d ago",
                image: MyImage.bikingIcon,
                color: MyColor.splashBacColorTwo,
              ),
              StepHistoryWidget(
                title1: "Yoga Retreat at Pilatology",
                title2: "872kcal",
                title3: "2d ago",
                image: MyImage.weightLiftIcon,
                color: MyColor.redColor ,
              ),

              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: (){
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))),
                    isScrollControlled: true,
                 barrierColor: MyColor.blackColor,
                    context: context, builder: (BuildContext context){
                  return const FractionallySizedBox(
                    heightFactor: 0.75,
                    child: FitlerActivityModelbottomsheetWidget(),
                  );
                });
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
      ),
    );
  }
}
