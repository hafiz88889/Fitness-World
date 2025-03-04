import 'package:fitnessworld/core/utils/my_color.dart';
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
final calendarController = CleanCalendarController(
  minDate: DateTime.now(),
  maxDate: DateTime.now().add(const Duration(days: 365)),
  onRangeSelected: (firstDate, secondDate) {},
  onDayTapped: (date) {},
  onPreviousMinDateTapped: (date) {},
  onAfterMaxDateTapped: (date) {},
  weekdayStart: DateTime.monday,
);
class _PersonalizePageEightState extends State<PersonalizePageEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: MyColor.whiteColor,
      body: SafeArea(child: Padding(padding: EdgeInsets.all(16),
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
                    margin: EdgeInsets.all(5),
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
                    margin: EdgeInsets.all(5),
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
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
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
           Wrap(
             children: [
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
               const SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
               const SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
               const SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: MyColor.blackColor
                 ),
                 child: Text("08:00",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
               ),
             ],
           ),
            const SizedBox(height: 10,),
            const SizedBox(height: 20,),
            const SizedBox(height: 15,),
            const SizedBox(height: 15,),
            const SizedBox(height: 10,),
            const SizedBox(height: 15,),
            const SizedBox(height: 10,),
            const SizedBox(height: 15,),
            const SizedBox(height: 10,),
            const SizedBox(height: 15,),
            const SizedBox(height: 15,),
            const SizedBox(height: 20,),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyOne);
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
