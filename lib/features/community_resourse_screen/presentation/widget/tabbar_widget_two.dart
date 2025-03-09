import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/book_couch_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabbarWidgetTwo extends StatelessWidget {
  const TabbarWidgetTwo({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>items=[
      {"color":MyColor.splashBacColor,"image":MyImage.copyIcon,"text":"Articles"},
      {"color":MyColor.grayColor,"image":MyImage.settingIcn,"text":"Workshop"},
      {"color":MyColor.splashBacColorTwo,"image":MyImage.five,"text":"Tips\n & Trick"},
      {"color":MyColor.beguniColor,"image":MyImage.fireIcon,"text":"Video"},
      {"color":MyColor.splashBacColor,"image":MyImage.copyIcon,"text":"Video"},
    ];
    final List<Map<String,dynamic>>textOnly=[
      {"text1":"Healthcare","text2":"The rise of virtual trainers powered by  AI & Machine Learning LLMs","text3":"251","text4":"25k","text5":"25"},
      {"text1":"Healthcare","text2":"The rise of virtual trainers powered by  AI & Machine Learning LLMs","text3":"251","text4":"25k","text5":"25"},
      {"text1":"Healthcare","text2":"The rise of virtual trainers powered by  AI & Machine Learning LLMs","text3":"251","text4":"25k","text5":"25"},
      {"text1":"Healthcare","text2":"The rise of virtual trainers powered by  AI & Machine Learning LLMs","text3":"251","text4":"25k","text5":"25"},

    ];
    final List<Map<String,dynamic>>workout=[
      {"title":"Personalize Workout For this","secondText":"By Couch Sandow Roskov","rating":"4.5","view":"4,525","react":"525","image":MyImage.gymManFive},
      {"title":"Personalize Workout For this","secondText":"By Couch Sandow Roskov","rating":"4.5","view":"4,525","react":"525","image":MyImage.gymManFive},
      {"title":"Personalize Workout For this","secondText":"By Couch Sandow Roskov","rating":"4.5","view":"4,525","react":"525","image":MyImage.gymManFive},
      {"title":"Personalize Workout For this","secondText":"By Couch Sandow Roskov","rating":"4.5","view":"4,525","react":"525","image":MyImage.gymManFive},
      {"title":"Personalize Workout For this","secondText":"By Couch Sandow Roskov","rating":"4.5","view":"4,525","react":"525","image":MyImage.gymManFive},


    ];

    return Container(
      padding: EdgeInsets.all(10),
      color: MyColor.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 70,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     color: items[index]["color"],
                     //   color: items[index]["color"],
                    ),
                      child: SvgPicture.asset(items[index]["image"],colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    ),
                    const SizedBox(height: 10,),
                    Text(items[index]["text"],textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),)
                  ],
                );
              },),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: MyColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: MyColor.borderColor,
                    spreadRadius: 2,
                    blurRadius: 5
                  )
                ]
              ),
              child: Column(
                children: [
                  Container(
                 height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                      image: DecorationImage(image:AssetImage(MyImage.gymManTwo,),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text("How AI Revolutaion Personalize Fitness Plans",style: regularTextStyle24.copyWith(fontSize: 20),),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.splashBacColor,
                          ),
                          child: SvgPicture.asset(MyImage.arrowRight,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Text("Our Article",style: regularTextStyle24.copyWith(fontSize: 20),),
            const SizedBox(height: 10,),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: textOnly.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.communityPageThree);
                  },
                  child: Container(
                    width: 280,
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:EdgeInsets.only(top:2,bottom: 2,left: 10,right: 10),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: MyColor.blackColor
                            )
                          ),
                          child: Text(textOnly[index]["text1"],style: regularTextStyle24.copyWith(fontSize: 16),),
                        ),
                        const SizedBox(height: 30,),
                        Text(textOnly[index]["text2"],style: regularTextStyle24.copyWith(fontSize: 16),),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Image(image: AssetImage(MyImage.hertIcon),color: MyColor.redColor,height: 20,),
                            const SizedBox(width: 8,),
                            Text(textOnly[index]["text3"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),),
                            const SizedBox(width: 20,),
                         SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                            const SizedBox(width: 8,),
                            Text(textOnly[index]["text4"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),),
                            const SizedBox(width: 20,),
                            Image(image: AssetImage(MyImage.filterIcon),color: MyColor.redColor,height: 20,),
                            const SizedBox(width: 8,),
                            Text(textOnly[index]["text5"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor),)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Our Workout",style: regularTextStyle24.copyWith(fontSize: 20),),
                Text("See All",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.splashBacColor),),
              ],
            ),
            const SizedBox(height: 15,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: workout.length,
              itemBuilder: (context, index) {
              return  Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyColor.grayColor.withAlpha(25)
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(workout[index]["image"]),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(12),
                                color: MyColor.splashBacColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColor
                                          .splashBacColor
                                          .withAlpha(50),
                                      spreadRadius: 3)
                                ]),
                            child: Image(
                              image: AssetImage(MyImage.playIcon),
                              color: MyColor.whiteColor,
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(workout[index]["title"],maxLines: 1,overflow: TextOverflow.ellipsis,style: regularTextStyle24.copyWith(fontSize: 16,),),
                        Text(workout[index]["secondText"],style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: AssetImage(MyImage.star),color: MyColor.splashBacColor,height: 15,),
                            const SizedBox(width: 5,),
                            Text(workout[index]["rating"],style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor)),
                            const SizedBox(width: 20,),
                           SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 15,),
                            const SizedBox(width: 5,),
                            Text(workout[index]["view"],style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor)),
                            const SizedBox(width: 20,),
                           Image(image: AssetImage(MyImage.hertIcon),color: MyColor.redColor,height: 15,),
                            const SizedBox(width: 5,),
                            Text(workout[index]["react"],style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
