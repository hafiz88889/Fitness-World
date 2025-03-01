import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class DietNutritionPageSix extends StatefulWidget {
  const DietNutritionPageSix({super.key});

  @override
  State<DietNutritionPageSix> createState() => _DietNutritionPageSixState();
}

class _DietNutritionPageSixState extends State<DietNutritionPageSix> {
  @override
  Widget build(BuildContext context) {
    double sliderValue=50;
    bool isSelect=false;
List<Map<String,dynamic>>items=[
  {"gram":"120g","text2":"Protein","color":MyColor.splashBacColor},
  {"gram":"50g","text2":"Crabs","color":MyColor.splashBacColorTwo},
  {"gram":"8g","text2":"Nutrains","color":MyColor.blackColor},
];
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 15,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
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
                    "Calorie Goal",
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
              const SizedBox(
                height: 100,
              ),
              SvgPicture.asset(
                MyImage.fireIcon,
                colorFilter:
                    ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),
                height: 35,
                width: 35,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "2500",
                style: regularTextStyle24.copyWith(fontSize: 60),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "kilo Calorie",
                style: regularTextStyle24.copyWith(
                    fontSize: 20, color: MyColor.grayColor),
              ),
              const SizedBox(height: 30,),
              FlutterSlider(
                values: [
                  sliderValue
                ],
              min: 10,
              max: 100,
              trackBar: FlutterSliderTrackBar(
              inactiveTrackBar: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black12,
            ),
                activeTrackBarHeight: 40,
                inactiveTrackBarHeight: 40,
          inactiveDisabledTrackBarColor: MyColor.splashBacColor.withAlpha(100),
          activeTrackBar: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: MyColor.splashBacColor,
          ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 140,
                        width: 130,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.borderColor
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(items[index]["gram"],style: regularTextStyle24.copyWith(fontSize: 22),),
                            Text(items[index]["text2"],style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor),),
                          ],
                        ),
                      ),
                      Positioned(
                        top:125,
                        left:50,
                        right:50,
                        child: Container(
                          height:30,
                          width:30,
                          padding:EdgeInsets.all(8),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: items[index]["color"],
                              boxShadow: [
                                BoxShadow(
                                  color: MyColor.whiteColor,
                                  spreadRadius: 5,
                                )
                              ]
                          ),
                        ),
                      )
                    ],
                  );
                },
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.greenColor.withAlpha(30),
                  border: Border.all(color: MyColor.greenColor)
                ),
                child: Row(
                  children: [
                 Checkbox(
                   activeColor: MyColor.greenColor,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                     value: isSelect,
                     onChanged: (value){
                     setState(() {
                       isSelect=value!;
                     });
                     }),
                    Text("you are on track",style: regularTextStyle24,)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                Navigator.pushNamed(context, RouteHelper.dietNutritionPageSeven);
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
                        "Set Calorie Goal",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        MyImage.rightMark,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor, BlendMode.srcIn),
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
