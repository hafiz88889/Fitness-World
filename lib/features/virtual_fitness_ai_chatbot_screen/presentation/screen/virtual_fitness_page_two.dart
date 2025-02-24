import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class VirtualFitnessPageTwo extends StatefulWidget {
  const VirtualFitnessPageTwo({super.key});

  @override
  State<VirtualFitnessPageTwo> createState() => _VirtualFitnessPageTwoState();
}
bool isSelectOne=false;
bool isSelectTwo=true;
class _VirtualFitnessPageTwoState extends State<VirtualFitnessPageTwo> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> itemCount = [
      {
        "color": MyColor.splashBacColor,
        "image1": MyImage.resturentIcon,
        "text1": "How to get Bulk Fast",
        "image2": MyImage.yogaIcon,
        "text2": "GPT-6",
        "image3": MyImage.fireIcon,
        "text3": "245 Total"
      },
      {
        "color": MyColor.splashBacColorTwo,
        "image1": MyImage.leafIcon,
        "text1": "Should I Made Fitness",
        "image2": MyImage.yogaIcon,
        "text2": "GPT-6",
        "image3": MyImage.fireIcon,
        "text3": "245 Total"
      },
      {
        "color": MyColor.beguniColor,
        "image1": MyImage.joggingIcon,
        "text1": "How to get Bulk Fast",
        "image2": MyImage.yogaIcon,
        "text2": "GPT-6",
        "image3": MyImage.fireIcon,
        "text3": "245 Total"
      },
    ];
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImage.wallPaperImage), fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
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
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                            )),
                      ),
                    ],
                  ),
                  Text(
                    "9,781",
                    style: regularTextStyle24.copyWith(
                        fontSize: 88, color: MyColor.whiteColor),
                  ),
                  Text(
                    "Total AI Conversation",
                    style: regularTextStyle24.copyWith(
                        fontSize: 20, color: MyColor.whiteColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        MyImage.fireIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "245 Total",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor.withAlpha(200),
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        MyImage.yogaIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor.withAlpha(200), BlendMode.srcIn),
                        height: 20,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "GPT-6",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor.withAlpha(200),
                            fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Conversations",
                      style: regularTextStyle24.copyWith(fontSize: 22),
                    ),
                    Text(
                      "See All",
                      style: regularTextStyle18.copyWith(
                          fontSize: 16, color: MyColor.splashBacColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemCount: itemCount.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                        width: 250,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: MyColor.borderColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: itemCount[index]["color"],
                              ),
                              child: SvgPicture.asset(
                                itemCount[index]["image1"],
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                                height: 30,
                                width: 30,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              itemCount[index]["text1"],
                              style: regularTextStyle24.copyWith(fontSize: 16),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  itemCount[index]["image2"],
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  itemCount[index]["text2"],
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  itemCount[index]["image3"],
                                  colorFilter: ColorFilter.mode(
                                      MyColor.grayColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  itemCount[index]["text3"],
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image: AssetImage(MyImage.dumbleImage),fit: BoxFit.cover),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Go Pro, Now!",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                          Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
                                  activeColor: MyColor.whiteColor,
                                  checkColor: MyColor.blackColor,
                                  value: isSelectOne
                                  , onChanged: (value){
                                setState(() {
                                  isSelectOne=value!;
                                });
                                  }),
                              Text("Virtual AI Coutch",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),)
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
                                  activeColor: MyColor.whiteColor,
                                  checkColor: MyColor.blackColor,
                                  value: isSelectTwo
                                  , onChanged: (value){
                                setState(() {
                                  isSelectTwo=value!;
                                });
                              }),
                              Text("Gym Trainer",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),)
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RouteHelper.virtualFitnessPageThree);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.splashBacColor
                          ),
                          child: Icon(Icons.star,color: MyColor.whiteColor,size: 30,)
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
