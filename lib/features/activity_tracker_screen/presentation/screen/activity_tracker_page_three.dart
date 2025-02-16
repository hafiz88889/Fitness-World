import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerPageThree extends StatefulWidget {
  const ActivityTrackerPageThree({super.key});

  @override
  State<ActivityTrackerPageThree> createState() => _ActivityTrackerPageThreeState();
}
class _ActivityTrackerPageThreeState extends State<ActivityTrackerPageThree> {
  final List<Map<String, dynamic>> item = [
    {"image": MyImage.joggingIcon, "text": "Manual","text2": "Manually Pick route by your self"},
    {"image": MyImage.wakingIcon, "text": "Suggest with AI","text2": "Out ai will decided the optimal route "},
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
                  "Jogging",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Text(
              "Choice Routes",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(
                  fontSize: 30),
            ),
            const SizedBox(height: 50,),
      Expanded(
          child:ListView.builder(
            itemCount: item.length,
              itemBuilder: (context,index){
                bool isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: isSelected? MyColor.splashBacColor:MyColor.borderColor,
                      boxShadow: [
                        BoxShadow(
                          color: isSelected?MyColor.splashBacColor.withAlpha(100):Colors.transparent,
                          spreadRadius: isSelected?5:0,
                        )
                      ],
                      border: Border.all(color: isSelected?MyColor.splashBacColor:MyColor.grayColor.withAlpha(0),width: isSelected? 5:0)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                         item[index]["text"],style: regularTextStyle24.copyWith(color: isSelected?MyColor.whiteColor:MyColor.blackColor),
                       ),
                        const SizedBox(height: 10,),
                        Text(
                          item[index]["text2"],style: regularTextStyle18.copyWith(color: isSelected?MyColor.whiteColor:MyColor.blackColor,fontSize: 14),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage(isSelected?MyImage.radioButtonFilled:MyImage.radioButtonNotFilled),height: 30,width: 30,color: isSelected?MyColor.whiteColor:MyColor.blackColor,)
                          ],
                        )
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
                  Navigator.pushNamed(context, RouteHelper.activityTrackerPageFour);
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
                    SvgPicture.asset(MyImage.arrowRight,)
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
