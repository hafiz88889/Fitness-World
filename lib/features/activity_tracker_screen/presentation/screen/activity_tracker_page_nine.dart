import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/activity_status_rotat_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerPageNine extends StatefulWidget {
  const ActivityTrackerPageNine({super.key});

  @override
  State<ActivityTrackerPageNine> createState() =>
      _ActivityTrackerPageNineState();
}
class _ActivityTrackerPageNineState extends State<ActivityTrackerPageNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                      color: MyColor.whiteColor,
                    ),
                    child: SvgPicture.asset(MyImage.backIcon),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.whiteColor,
                    ),
                    child: SvgPicture.asset(MyImage.settingIcn)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Activity Stats",
              style: regularTextStyle24.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Icon(
                  Icons.stop,
                  size: 30,
                  color: MyColor.blackColor,
                ),
                Text(
                  "Running",
                  style: regularTextStyle18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.stop,
                  size: 30,
                  color: MyColor.splashBacColor,
                ),
                Text(
                  "Jogging",
                  style: regularTextStyle18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.stop,
                  size: 30,
                  color: MyColor.grayColor,
                ),
                Text(
                  "Biking    ",
                  style: regularTextStyle18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.stop,
                  size: 30,
                  color: MyColor.splashBacColorTwo,
                ),
                Text(
                  "Weightleft",
                  style: regularTextStyle18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.stop,
                  size: 30,
                  color: MyColor.borderColor,
                ),
                Text(
                  "Yoga",
                  style: regularTextStyle18,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Transform.rotate(
                    angle: 1,
                    child: ActivityStatusRotatContainer(
                        height: 10,
                        width: 10,
                        color: MyColor.whiteColor,
                        title: Text(
                          "68h",
                          style: regularTextStyle24.copyWith(
                              fontSize: 36, color: MyColor.whiteColor),
                        ))),
                Positioned(
                 right: 90,
                  top: 50,
                  child: Transform.rotate(
                      angle: -1.3,
                      child: ActivityStatusRotatContainer(
                          height: 70,
                          width: 100,
                          color: MyColor.redColor,
                          title: Text(
                            "7h",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20, color: MyColor.whiteColor),
                          ))),
                ),
                Positioned(
                  left: 60,
                  top: 60,
                  child: Transform.rotate(
                      angle: 1,
                      child: ActivityStatusRotatContainer(
                          height: 100,
                          width: 100,
                          color: MyColor.splashBacColor,
                          title: Text(
                            "8h",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20, color: MyColor.whiteColor),
                          ))),
                ),
                Positioned(
                 top: 150,
                  left: -140,
                  child: Transform.rotate(
                      angle: 1,
                      child: ActivityStatusRotatContainer(
                          height: 200,
                          width: 300,
                          color: MyColor.blackColor,
                          title: Text(
                            "68h",
                            style: regularTextStyle24.copyWith(
                                fontSize: 36, color: MyColor.whiteColor),
                          ))),
                ),
                Positioned(
                  top: 370,
                  right: 20,
                  child: Transform.rotate(
                      angle: -0.6,
                      child: ActivityStatusRotatContainer(
                          height: 200,
                          width: 150,
                          color: MyColor.borderColor,
                          title: Text(
                            "87h",
                            style: regularTextStyle24.copyWith(
                                fontSize: 36, color: MyColor.blackColor,),
                          ))),
                ),
                Positioned(
                  top: 450,
                  child: Transform.rotate(
                      angle: 0.3,
                      child: ActivityStatusRotatContainer(
                          height: 100,
                          width: 150,
                          color: MyColor.splashBacColorTwo,
                          title: Text(
                            "20h",
                            style: regularTextStyle24.copyWith(
                                fontSize: 36, color: MyColor.whiteColor),
                          ))),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.activityTrackerPageTen);
              },
              child: Container(
                width: 180,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor,
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(MyImage.calenderIcon),
                      height: 15,
                      width: 15,
                      color: MyColor.blackColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Total Duration",
                      style: regularTextStyle18.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Transform.rotate(
                        angle: -1.5, child: SvgPicture.asset(MyImage.backIcon))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
