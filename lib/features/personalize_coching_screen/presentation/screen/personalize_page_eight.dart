import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PersonalizePageEight extends StatefulWidget {
  const PersonalizePageEight({super.key});

  @override
  State<PersonalizePageEight> createState() => _PersonalizePageEightState();
}
List<String> timeList=[
  "08:00",
  "09:00",
  "10:00",
  "11:00",
  "12:00",
  "13:00",
  "14:00",
  "15:00",
  "16:00",
  "17:00",
  "18:00",
  "19:00",
];
final calendarController = CleanCalendarController(
  minDate: DateTime.now(),
  maxDate: DateTime.now().add(const Duration(days: 365)),
  onRangeSelected: (firstDate, secondDate) {},
  onDayTapped: (date) {},
  onPreviousMinDateTapped: (date) {},
  onAfterMaxDateTapped: (date) {},
  weekdayStart: DateTime.monday,
);
int selectIndex=1;
class _PersonalizePageEightState extends State<PersonalizePageEight> {
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
                              color: MyColor.whiteColor.withAlpha(50),
                              spreadRadius: 3
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color:MyColor.orangeColor
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    )
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
                              color: MyColor.splashBacColor.withAlpha(50),
                              spreadRadius: 5
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      color: MyColor.splashBacColor
                    ),
                    child: Image(image: AssetImage(MyImage.dotIcon),height: 30,width: 30,color: MyColor.whiteColor,)
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
                Text("Select Date",style: regularTextStyle24.copyWith(fontSize: 16),),
                Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(150),),
              ],
            ),
            const SizedBox(height: 15,),
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
            const SizedBox(height: 15,),
            const Divider(),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Time Slot",style: regularTextStyle24.copyWith(fontSize: 16),),
                Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(150),),
              ],
            ),
            const SizedBox(height: 14,),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: timeList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ), itemBuilder: (context, index) {
                  bool isSelect=index==selectIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectIndex=index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      //  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelect?MyColor.blackColor:MyColor.borderColor,
                          boxShadow: [
                            BoxShadow(
                                color: isSelect?MyColor.blackColor.withAlpha(30):Colors.transparent,
                                spreadRadius: isSelect?5:0
                            )
                          ]
                      ),
                      child: Text(timeList[index],style: regularTextStyle24.copyWith(color: isSelect?MyColor.whiteColor:MyColor.blackColor),),
                    ),
                  );
                },),
            const SizedBox(height: 20,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, RouteHelper.personalizePageNine);
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
