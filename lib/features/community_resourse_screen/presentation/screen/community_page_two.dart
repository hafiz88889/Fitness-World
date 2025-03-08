import 'dart:convert';

import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';

class CommunityPageTwo extends StatefulWidget {
  const CommunityPageTwo({super.key});

  @override
  State<CommunityPageTwo> createState() => _CommunityPageTwoState();
}

int selectIndex = 1;
final List<Map<String, dynamic>> items = [
  {"image": MyImage.weightLiftIcon, "text": "Workout"},
  {"image": MyImage.joggingIcon, "text": "Jogging"},
  {"image": MyImage.resturentIcon, "text": "Diet"},
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
class _CommunityPageTwoState extends State<CommunityPageTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                            Row(
                              children: [
                                Text(
                                  "Md Hafizur Rahman",
                                  style: regularTextStyle24.copyWith(
                                      fontSize: 16, color: MyColor.whiteColor),
                                ),
                                Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 16,)
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  MyImage.copyIcon,
                                  height: 25,
                                  width: 25,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "25 Post",
                                  style: regularTextStyle18.copyWith(
                                      fontSize: 14, color: MyColor.whiteColor),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(MyImage.backGroundFullPlus,
                                    height: 20,
                                    width: 20,
                                    colorFilter: ColorFilter.mode(
                                        MyColor.grayColor,
                                        BlendMode.srcIn)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "58%",
                                  style: regularTextStyle18.copyWith(
                                      fontSize: 14, color: MyColor.whiteColor),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                            alignment: Alignment.center,
                            height: 66,
                            width: 66,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                               color: MyColor.borderColor.withAlpha(150)
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image(
                                  image: AssetImage(MyImage.notifictionIcon),
                                  height: 30,
                                  width: 30,
                                  color: MyColor.whiteColor,
                                ),
                                Positioned(
                                  top: -2,
                                  right: 2,
                                  bottom: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: MyColor.whiteColor,width: 2),
                                        color: MyColor.splashBacColor
                                    ),
                                    child: Text("8",style: regularTextStyle18.copyWith(fontSize: 12,color: MyColor.whiteColor),),
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 60,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: MyColor.grayColor.withAlpha(150)),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                              color: MyColor.grayColor,
                              borderRadius: BorderRadius.circular(25)),
                          labelColor: MyColor.whiteColor,
                          labelStyle: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor),
                          unselectedLabelColor:
                          MyColor.borderColor.withAlpha(100),
                          tabs: const [
                            Text(
                              "Community",
                            ),
                            Text("Resource"),
                          ],
                        )),
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
                        Row(
                          children: [
                            Text("Trending",style: regularTextStyle18.copyWith(fontSize: 14),),
                            const SizedBox(width: 8,),
                            Transform.rotate(
                                angle: -1.5,
                                child: SvgPicture.asset(MyImage.backIcon,height: 15,))
                          ],
                        )
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
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.borderColor,
                      ),
                      child: Column(
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
                                  Row(
                                    children: [
                                      Text(
                                        "Md Hafizur Rahman",
                                        style: regularTextStyle24.copyWith(
                                            fontSize: 16, color: MyColor.blackColor),
                                      ),
                                      Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 16,)
                                    ],
                                  ),
                                  Text("Posted 3m ago",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),)
                                ],
                              ),
                              const Spacer(),
                            Image(image: AssetImage(MyImage.threeDotMenuIcon),color: MyColor.grayColor,height: 25,)
                            ],
                          ),
                          const SizedBox(height: 15,),
                          const Text("Hey Sandow Farm Just Crushed my morning workout a killer Hitt session to kickstart the day Feeling the burn in the best way possible ",textAlign: TextAlign.start,),
                          const SizedBox(height: 10,),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(MyImage.plateImage),fit: BoxFit.cover)
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                           SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 15,),
                              const SizedBox(width: 8,),
                              Text("5855",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.hertIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("215",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.filterIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("12",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const Spacer(),
                              Image(image: AssetImage(MyImage.filterIcon),height: 20,),
                              const SizedBox(width: 8,),
                              Text("Save",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.borderColor,
                      ),
                      child: Column(
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
                                  Row(
                                    children: [
                                      Text(
                                        "Md Hafizur Rahman",
                                        style: regularTextStyle24.copyWith(
                                            fontSize: 16, color: MyColor.blackColor),
                                      ),
                                      Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 16,)
                                    ],
                                  ),
                                  Text("Posted 3m ago",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),)
                                ],
                              ),
                              const Spacer(),
                              Image(image: AssetImage(MyImage.threeDotMenuIcon),color: MyColor.grayColor,height: 25,)
                            ],
                          ),
                          const SizedBox(height: 15,),
                          const Text("Hey Sandow Farm Just Crushed my morning workout a killer Hitt session to kickstart the day Feeling the burn in the best way possible ",textAlign: TextAlign.start,),
                          const SizedBox(height: 10,),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.orangeColor.withAlpha(50)
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 15,),
                              const SizedBox(width: 8,),
                              Text("5855",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.hertIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("215",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.filterIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("12",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const Spacer(),
                              Image(image: AssetImage(MyImage.filterIcon),height: 20,),
                              const SizedBox(width: 8,),
                              Text("Save",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.borderColor,
                      ),
                      child: Column(
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
                                  Row(
                                    children: [
                                      Text(
                                        "Md Hafizur Rahman",
                                        style: regularTextStyle24.copyWith(
                                            fontSize: 16, color: MyColor.blackColor),
                                      ),
                                      Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 16,)
                                    ],
                                  ),
                                  Text("Posted 3m ago",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),)
                                ],
                              ),
                              const Spacer(),
                              Image(image: AssetImage(MyImage.threeDotMenuIcon),color: MyColor.grayColor,height: 25,)
                            ],
                          ),
                          const SizedBox(height: 15,),
                          const Text("Hey Sandow Farm Just Crushed my morning workout a killer Hitt session to kickstart the day Feeling the burn in the best way possible ",textAlign: TextAlign.start,),
                          const SizedBox(height: 10,),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                               color: MyColor.redColor.withAlpha(30)
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 15,),
                              const SizedBox(width: 8,),
                              Text("5855",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.hertIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("215",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const SizedBox(width: 20,),
                              Image(image: AssetImage(MyImage.filterIcon),color: MyColor.redColor,height: 15,),
                              const SizedBox(width: 8,),
                              Text("12",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                              const Spacer(),
                              Image(image: AssetImage(MyImage.filterIcon),height: 20,),
                              const SizedBox(width: 8,),
                              Text("Save",style: regularTextStyle18.copyWith(fontSize: 14,color: MyColor.grayColor),),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteHelper.communityPageTwo);
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
                              "Add New Post",
                              style: regularTextStyle24.copyWith(
                                  color: MyColor.whiteColor, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
