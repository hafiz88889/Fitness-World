import 'dart:convert';

import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';

class NutritionDietPageTwo extends StatefulWidget {
  const NutritionDietPageTwo({super.key});

  @override
  State<NutritionDietPageTwo> createState() => _NutritionDietPageTwoState();
}

int selectIndex = 1;
final List<Map<String, dynamic>> items = [
  {"image": MyImage.leafIcon, "text": "Vegetable"},
  {"image": MyImage.hertIcon, "text": "Meat"},
  {"image": MyImage.leafIcon, "text": "Fruits"},
  {"image": MyImage.resturentIcon, "text": "Resturent"},
  {"image": MyImage.leafIcon, "text": "Vegetable"},
];
final List<Map<String,dynamic>>itemTwo=[
  {"image":MyImage.plateImage,"text1":"Fried Brocolli & Nuts ",},
  {"image":MyImage.gymManFour,"text1":"Salmo Meet With Sunny  ",},
  {"image":MyImage.plateImageTwo,"text1":"Meta Meat Diet With Ox",},
  {"image":MyImage.ladyProfile,"text1":"Fride Brocilli",},
  {"image":MyImage.ladyProfile,"text1":"Fride Brocilli",},
];
class _NutritionDietPageTwoState extends State<NutritionDietPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
              height: 230,
              decoration: BoxDecoration(
                color: MyColor.blackColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 88,
                        width: 88,
                        decoration: BoxDecoration(
                            color: MyColor.whiteColor,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(MyImage.ladyProfile),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jun 25 2025",
                            style: regularTextStyle18.copyWith(
                                fontSize: 12, color: MyColor.whiteColor),
                          ),
                          Text(
                            "Hello Makisi!",
                            style: regularTextStyle24.copyWith(
                                fontSize: 24, color: MyColor.whiteColor),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                MyImage.fireIcon,
                                height: 25,
                                width: 25,
                                colorFilter: ColorFilter.mode(
                                    MyColor.splashBacColor, BlendMode.srcIn),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "215kcal",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(MyImage.emojiIconOne,
                                  height: 20,
                                  width: 20,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.splashBacColorTwo,
                                      BlendMode.srcIn)),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Hungry",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.whiteColor)),
                        child: Image(
                          image: AssetImage(MyImage.notifictionIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.whiteColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: MyColor.grayColor.withAlpha(170),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          MyImage.searchIcon,
                          height: 25,
                          width: 25,
                          colorFilter: ColorFilter.mode(
                              MyColor.whiteColor, BlendMode.srcIn),
                        ),
                      ),
                      hintText: "Search Our Food database..",
                      hintStyle: regularTextStyle18.copyWith(
                          color: MyColor.whiteColor.withAlpha(200)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Browse Category",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Text("See All",
                          style: regularTextStyle18.copyWith(
                              fontSize: 16, color: MyColor.splashBacColor)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 66,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        bool isSelected = index == selectIndex;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: isSelected
                                    ? MyColor.splashBacColorTwo
                                    : MyColor.borderColor,
                                border: Border.all(
                                    color: isSelected
                                        ? MyColor.whiteColor.withAlpha(150)
                                        : Colors.transparent,
                                    width: isSelected ? 5 : 0)),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  items[index]["image"],
                                  colorFilter: ColorFilter.mode(
                                      isSelected
                                          ? MyColor.whiteColor
                                          : MyColor.grayColor,
                                      BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(items[index]["text"],
                                    style: regularTextStyle18.copyWith(
                                        color: isSelected
                                            ? MyColor.whiteColor
                                            : MyColor.blackColor)),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Morning Routines",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Text("See All",
                          style: regularTextStyle18.copyWith(
                              fontSize: 16, color: MyColor.splashBacColor)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(10),
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(MyImage.plateImage),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 65,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: MyColor.splashBacColor,
                                  ),
                                  child: SvgPicture.asset(
                                    MyImage.resturentIcon,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.whiteColor, BlendMode.srcIn),
                                    height: 25,
                                    width: 25,
                                  )),
                              const Spacer(),
                              Text(
                                "Salad & Egg",
                                style: regularTextStyle24.copyWith(
                                    color: MyColor.blackColor, fontSize: 30),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    MyImage.fireIcon,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor.withAlpha(200),
                                        BlendMode.srcIn),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "412 kcal",
                                    style: regularTextStyle24.copyWith(
                                        fontSize: 16,
                                        color:
                                            MyColor.grayColor.withAlpha(200)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(MyImage.energyIcon),
                                    height: 20,
                                    width: 20,
                                    color: MyColor.grayColor,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "25 min",
                                    style: regularTextStyle24.copyWith(
                                        fontSize: 16,
                                        color:
                                            MyColor.grayColor.withAlpha(200)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Calorie Goal ",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        color: MyColor.grayColor,
                        height: 25,
                        width: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteHelper.dietNutritionPageThree);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyColor.splashBacColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "2500",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 60, color: MyColor.whiteColor),
                              ),
                              Text(
                                "kcal",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 24, color: MyColor.whiteColor),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(color: MyColor.whiteColor)),
                                child: SvgPicture.asset(
                                  MyImage.settingIcn,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.whiteColor, BlendMode.srcIn),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          LinearPercentIndicator(
                            animation: true,
                            alignment: MainAxisAlignment.center,
                            barRadius: const Radius.circular(20),
                            padding: const EdgeInsets.all(1),
                            width: 300.0,
                            lineHeight: 12.0,
                            percent: 0.5,
                            backgroundColor: MyColor.whiteColor.withAlpha(150),
                            progressColor: MyColor.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "AI Suggestion",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        color: MyColor.grayColor,
                        height: 25,
                        width: 25,
                      )
                    ],
                  ),
                  Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(image: AssetImage(MyImage.plateImageTwo),fit: BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:const EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColor.grayColor,
                      ),
                      child: Text("Protine-Rich",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                    ),
                    const SizedBox(height: 30,),
                    Text("Tokyo Style Ramen",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 30),),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),),
                        const SizedBox(width: 4,),
                        Text("25 min",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor.withAlpha(200)),),
                        SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn)),
                        const SizedBox(width: 4,),
                        Text("412 kcal",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        SvgPicture.asset(MyImage.resturentIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),height: 20,width: 20,),
                        const SizedBox(width: 4,),
                        Text("2g protein",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor.withAlpha(200)),),

                        SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),height: 20,width: 20),
                        const SizedBox(width: 4,),
                        Text("Healthy",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor),)
                      ],
                    ),
                 const SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: MyColor.whiteColor)
                      ),
                      child: Text("Add Meal +",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                    )
                  ],
                ),
              ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Browse Meal ",
                        style: regularTextStyle24.copyWith(fontSize: 20),
                      ),
                      const Spacer(),
                      Text("See All",
                          style: regularTextStyle18.copyWith(
                              fontSize: 16, color: MyColor.splashBacColor)),
                      const SizedBox(width: 8,),
                      Image(image: AssetImage(MyImage.wifiIcon),color: MyColor.splashBacColor,height: 15,width: 15,)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemTwo.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: MyColor.grayColor.withAlpha(25)
                    ),
                    child: Row(
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(itemTwo[index]["text1"],style: regularTextStyle24.copyWith(fontSize: 20,color: MyColor.blackColor),),
                          const SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.redColor, BlendMode.srcIn),),
                              const SizedBox(width: 5,),
                              Text("251kcal",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor)),
                              const SizedBox(width: 20,),
                              Icon(Icons.star,size: 20,color: MyColor.splashBacColor,),
                              const SizedBox(width: 5,),
                              Text("4.1",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor)),
                              const SizedBox(width: 20,),
                              SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColorTwo, BlendMode.srcIn),),
                              const SizedBox(width: 5,),
                              Text("15min",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor))
                            ],
                          ),
                        ],
                      ),
                        const Spacer(),
                        Container(
                          height: 88,
                          width: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(image: AssetImage(itemTwo[index]["image"]),fit: BoxFit.cover)
                          ),
                        ),
                      ],
                    ),
                  );
                },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  dynamic postList = [];

  void getPostData() async {
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    final apiResponse = await http.get(url);
    setState(() {
      postList = jsonDecode(apiResponse.body);
    });
  }
}
