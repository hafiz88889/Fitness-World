
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutTrainingPageTen extends StatefulWidget {
  const WorkoutTrainingPageTen({super.key});

  @override
  State<WorkoutTrainingPageTen> createState() => _WorkoutTrainingPageTenState();
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

final List<Map<String,dynamic>>itemList=[
  {"image1":MyImage.watchIcon,"image2":MyImage.weightLiftIcon,"image3":MyImage.fireIcon,"text1":"Chest Workout","text2":"50 reps","text3":"20Min","text4":"13:00",},
  {"image1":MyImage.watchIcon,"image2":MyImage.weightLiftIcon,"image3":MyImage.fireIcon,"text1":"Back Workout","text2":"25 reps","text3":"10Min","text4":"12:00"},
  {"image1":MyImage.watchIcon,"image2":MyImage.wakingIcon,"image3":MyImage.fireIcon,"text1":"Cardio Hit Training","text2":"22 reps","text3":"40Min","text4":"05:03"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},
  {"image1":MyImage.watchIcon,"image2":MyImage.joggingIcon,"image3":MyImage.fireIcon,"text1":"Core Abs Workout","text2":"80 reps","text3":"35Min","text4":"05:55"},

];

class _WorkoutTrainingPageTenState extends State<WorkoutTrainingPageTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 40,left:15,bottom: 5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                color: MyColor.splashBacColor
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.orangeColor),
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            colorFilter:
                            ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text("My Workouts",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),)
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
                                color: isSelect?MyColor.whiteColor:MyColor.orangeColor,
                                boxShadow: [
                                  BoxShadow(
                                    color:isSelect?MyColor.whiteColor.withAlpha(100):Colors.transparent,
                                    spreadRadius: isSelect?4:0,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Text(items[index]["week name"],style: regularTextStyle24.copyWith(color: isSelect?MyColor.grayColor:MyColor.whiteColor,fontSize: 14),),
                                Text(items[index]["date"],style: regularTextStyle24.copyWith(color: isSelect?MyColor.blackColor:MyColor.whiteColor,),),
                                SizedBox(
                                  height: 10,
                                  child: CircleAvatar(
                                    backgroundColor: isSelect?MyColor.orangeColor:MyColor.whiteColor.withAlpha(180),
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
            Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("All Schedules",style: regularTextStyle24.copyWith(fontSize: 22),),
                    const Spacer(),
                    Text("Newest First",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                    const SizedBox(width: 10,),
                    Image(image: AssetImage(MyImage.wifiIcon),color: MyColor.splashBacColor,height: 15,width: 15,)
                  ],
                ),
                ListView.builder(
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: itemList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.borderColor
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(itemList[index]["image1"],colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 25,width: 25,),
                                Text(itemList[index]["text4"],style: regularTextStyle24.copyWith(color: MyColor.grayColor),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, RouteHelper.workoutTraningPageEleven);
                              },
                              child: Container(
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
                                          borderRadius: BorderRadius.circular(20),
                                          color: MyColor.whiteColor
                                      ),
                                      child: SvgPicture.asset(itemList[index]["image2"],colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 25,width: 25,),
                                    ),
                                    const SizedBox(width: 5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(itemList[index]["text1"],style: regularTextStyle24,),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            SvgPicture.asset(itemList[index]["image3"],colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),height: 25,width: 25,),
                                            Text(itemList[index]["text2"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                                            const SizedBox(width: 20,),
                                            SvgPicture.asset(itemList[index]["image1"],colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),height: 25,width: 25,),
                                            Text(itemList[index]["text3"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },)
          ],
            ),
            ),
        ]
        ),
      ),
    );
  }
}
