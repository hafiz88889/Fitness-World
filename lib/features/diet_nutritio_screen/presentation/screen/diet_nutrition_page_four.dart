
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/diet_nutritio_screen/presentation/widget/page_four_tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietNutritionPageFour extends StatefulWidget {
  const DietNutritionPageFour({super.key});

  @override
  State<DietNutritionPageFour> createState() => _DietNutritionPageFourState();
}
int selectIndex=1;
final List<Map<String,dynamic>> items=[
  {"week name":"Tue","date":"8",},
  {"week name":"Tue","date":"9",},
  {"week name":"Tue","date":"10",},
  {"week name":"Tue","date":"11",},
  {"week name":"Tue","date":"12",},
  {"week name":"Tue","date":"13",},
  {"week name":"Tue","date":"14",},
];

class _DietNutritionPageFourState extends State<DietNutritionPageFour> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 40,left:15,bottom: 5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                color: MyColor.blackColor
              ),
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
                            color: MyColor.whiteColor.withAlpha(100),
                          ),
                          child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                        ),
                      ),
                      Text(
                        "My Meal ",
                        style: regularTextStyle24.copyWith(fontSize: 24,color: MyColor.whiteColor),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.whiteColor.withAlpha(100),
                        ),
                        child: SvgPicture.asset(MyImage.settingIcn,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                      itemBuilder: (context, index) {
                      bool isSelect=index==selectIndex;
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              selectIndex=index;
                            });
                          },
                          child:  Container(
                            margin: const EdgeInsets.only(right: 10,top: 10,bottom: 5),
                            width: 60,
                            height: 75,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isSelect?MyColor.splashBacColor:MyColor.grayColor.withAlpha(100),
                                boxShadow: [
                                  BoxShadow(
                                    color:isSelect?MyColor.orangeColor.withAlpha(100):Colors.transparent,
                                    spreadRadius: isSelect?4:0,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Text(items[index]["week name"],style: regularTextStyle24.copyWith(color: isSelect?MyColor.whiteColor:MyColor.whiteColor,fontSize: 14),),
                                Text(items[index]["date"],style: regularTextStyle24.copyWith(color: isSelect?MyColor.whiteColor:MyColor.whiteColor,),),
                                SizedBox(
                                  height: 10,
                                  child: CircleAvatar(
                                    backgroundColor: isSelect?MyColor.whiteColor:MyColor.grayColor.withAlpha(180),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyColor.borderColor),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: MyColor.blackColor,
                  borderRadius: const BorderRadius.all(Radius.circular(15),),
                ),
                labelColor: MyColor.whiteColor,
                unselectedLabelColor: MyColor.grayColor.withAlpha(200),
                tabs:  const [
                  Text(
                    "Breakfast",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Lunch",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Dinner",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
           const Expanded(
             child: TabBarView(
               children: [
             PageFourTabbarView(),
             PageFourTabbarView(),
             PageFourTabbarView(),
               ],
             ),
           )
        ]
        ),
        floatingActionButton: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, RouteHelper.dietNutritionPageFive);
          },
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MyColor.splashBacColor,
            ),
            child: SvgPicture.asset(MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,),
          ),
        ),
      ),
    );
  }
}
