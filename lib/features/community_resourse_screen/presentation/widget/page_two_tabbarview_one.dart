import 'package:fitnessworld/features/community_resourse_screen/presentation/widget/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';
import '../../../../core/utils/route_name.dart';

class PageTwoTabbarviewOne extends StatefulWidget {
  const PageTwoTabbarviewOne({super.key});

  @override
  State<PageTwoTabbarviewOne> createState() => _PageTwoTabbarviewOneState();
}
int selectIndex = 1;
final List<Map<String, dynamic>> items = [
  {"image": MyImage.weightLiftIcon, "text": "Workout"},
  {"image": MyImage.joggingIcon, "text": "Jogging"},
  {"image": MyImage.resturentIcon, "text": "Diet"},
  {"image": MyImage.resturentIcon, "text": "Resturent"},
  {"image": MyImage.leafIcon, "text": "Vegetable"},
];
class _PageTwoTabbarviewOneState extends State<PageTwoTabbarviewOne> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
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
                        horizontal: 15,
                        vertical: 10
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
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 0.65,
                    child: Bottomsheet(),
                  );
                },);
              },
              child: Container(
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
                 // Navigator.pushNamed(context, RouteHelper.communityPageTwo);
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
      ),
    );
  }
}
