import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/activity_tracker_screen/presentation/widget/set_route_bottomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ActivityTrackerPageFive extends StatefulWidget {
  const ActivityTrackerPageFive({super.key});

  @override
  State<ActivityTrackerPageFive> createState() => _ActivityTrackerPageFiveState();
}
class _ActivityTrackerPageFiveState extends State<ActivityTrackerPageFive> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImage.mapImage),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 30,),
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
                  Text(
                    "Set Route",
                    style: regularTextStyle24.copyWith(fontSize: 20),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.whiteColor,
                    ),
                    child: SvgPicture.asset(MyImage.settingIcn)
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                 showModalBottomSheet(
                     context: context, builder: (BuildContext){
                   return const FractionallySizedBox(
                     heightFactor: 0.8,
                     child: SetRouteBottomsheetWidget(),
                   );
                 });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.blackColor
                  ),
                  child:  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Starting Place",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.borderColor,),),
                          Text("8001 Ainchad Park,New York",style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.whiteColor,),),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                  color: MyColor.whiteColor.withAlpha(100),
                                  spreadRadius: 5
                              )
                            ]
                        ),
                        child: Image(image: AssetImage(MyImage.runningIcon),height: 25,width: 25,)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}
