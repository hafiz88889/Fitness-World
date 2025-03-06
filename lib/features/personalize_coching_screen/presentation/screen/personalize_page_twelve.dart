import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PersonalizePageTwelve extends StatefulWidget {
  const PersonalizePageTwelve({super.key});

  @override
  State<PersonalizePageTwelve> createState() => _PersonalizePageTwelveState();
}
final List<Map<String, dynamic>> item = [
  {"image": MyImage.gymManFour,"text1":"Zukman D. Wu","text2":"4.5","text3":"22 Client"},
  {"image": MyImage.gymManFive,"text1":"Zukman D. Wu","text2":"4.5","text3":"22 Client"},
  {"image": MyImage.gymManTwo,"text1":"Zukman D. Wu","text2":"4.5","text3":"22 Client"},
];

class _PersonalizePageTwelveState extends State<PersonalizePageTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
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
                    Text(
                      "Ready for training",
                      style: regularTextStyle18.copyWith(
                          fontSize: 12, color: MyColor.blackColor),
                    ),
                    Text(
                      "Hello Makisi!",
                      style: regularTextStyle24.copyWith(
                          fontSize: 24, color: MyColor.blackColor),
                    ),
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
                      border: Border.all(color: MyColor.blackColor)),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        image: AssetImage(MyImage.notifictionIcon),
                        height: 30,
                        width: 30,
                        color: MyColor.blackColor,
                      ),
                      Positioned(
                        top: -2,
                        right: 2,
                        bottom: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1,horizontal: 3),
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
            const SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColor.borderColor,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    MyImage.searchIcon,
                    height: 25,
                    width: 25,
                    colorFilter: ColorFilter.mode(
                        MyColor.blackColor, BlendMode.srcIn),
                  ),
                ),
                hintText: "Search fitness Couch...",
                hintStyle: regularTextStyle18.copyWith(
                    color: MyColor.grayColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                      image: AssetImage(MyImage.blackGymLady),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage(MyImage.star),height: 20,color: MyColor.orangeColor,),
                      const SizedBox(width: 10,),
                      Text("4.5",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                      const SizedBox(width: 20,),
                      Image(image: AssetImage(MyImage.userIconTwo),height: 25,color: MyColor.splashBacColorTwo,),
                      const SizedBox(width: 10,),
                      Text("88 Client",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),)
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "Couch of the day",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.whiteColor, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "X-II-AE-12",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor, fontSize: 30),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: MyColor.grayColor),
                              child: Text(
                                "AI",
                                style: regularTextStyle18.copyWith(
                                    fontSize: 14, color: MyColor.whiteColor),
                              ),
                            ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteHelper.personalizePageThirteen);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            color: MyColor.splashBacColor,
                          ),
                          child: Transform.rotate(
                            angle: -1.0,
                            child: SvgPicture.asset(
                                MyImage.arrowRight),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bound) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                MyColor.whiteColor
                              ]).createShader(bound);
                        },
                        blendMode: BlendMode.lighten,
                        child: Image(image: AssetImage(item[index]["image"]), height: 250, width: 320,fit: BoxFit.cover,)
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            width: 320,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: MyColor.grayColor.withAlpha(120)),
                                  child: Text(
                                    "Human",
                                    style: regularTextStyle18.copyWith(
                                        fontSize: 16,
                                        color: MyColor.whiteColor),
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item[index]["text1"],
                                          style: regularTextStyle24.copyWith(
                                              color: MyColor.blackColor,
                                              fontSize: 30),
                                        ),
                                        Row(
                                          children: [
                                          Image(image: AssetImage(MyImage.star),height: 25,color: MyColor.orangeColor,),
                                            const SizedBox(width: 5),
                                            Text(
                                              item[index]["text2"],
                                              style:
                                              regularTextStyle18.copyWith(
                                                  color: MyColor.grayColor,
                                                  fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Image(image: AssetImage(MyImage.userIconTwo),height: 25,color: MyColor.splashBacColorTwo,),
                                            const SizedBox(width: 5),
                                            Text(
                                              item[index]["text3"],
                                              style:
                                              regularTextStyle18.copyWith(
                                                  color: MyColor.grayColor,
                                                  fontSize: 14),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
