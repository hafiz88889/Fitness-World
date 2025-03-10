import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class CommunityPageThree extends StatefulWidget {
  const CommunityPageThree({super.key});

  @override
  State<CommunityPageThree> createState() => _CommunityPageThreeState();
}
final List<Map<String,dynamic>>checkBox=[
  {"text":"Check Nutrition",},
  {"text":"Eat Healthy",},
  {"text":"Exercise Routine",},
  {"text":"Eat Green Food",},
  {"text":"Check Nutrition",},
  {"text":"Check Nutrition",},
  {"text":"Check Nutrition",},
  {"text":"Check Nutrition",},
];
bool isSelect=false;
class _CommunityPageThreeState extends State<CommunityPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  ),
                  color: MyColor.blackColor),
              child: SafeArea(
                child: Column(
                  children: [
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
                              color: MyColor.grayColor.withAlpha(150),
                            ),
                            child: SvgPicture.asset(
                              MyImage.backIcon,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Article Detail",
                            style: regularTextStyle24.copyWith(
                                fontSize: 20, color: MyColor.whiteColor),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.grayColor.withAlpha(150),
                            ),
                            child: Image(
                              image: AssetImage(MyImage.shareIcon),
                              color: MyColor.whiteColor,
                              height: 25,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A Revolution in AI Wellness with Sandow",
                      style: regularTextStyle24.copyWith(
                          fontSize: 30, color: MyColor.whiteColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage(MyImage.star),
                          color: MyColor.splashBacColor,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("4.5",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor)),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          MyImage.visibilityIcon,
                          colorFilter: ColorFilter.mode(
                              MyColor.grayColor, BlendMode.srcIn),
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("25k",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor)),
                        const SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(MyImage.hertIcon),
                          color: MyColor.redColor,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("525",
                            style: regularTextStyle18.copyWith(
                                fontSize: 14, color: MyColor.whiteColor))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: MyColor.whiteColor,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(MyImage.ladyProfile),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Md Hafizur Rahman",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              Text(
                                "Md Hafizur Rahman",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 14, color: MyColor.grayColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColor.splashBacColor,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Follow",
                                style: regularTextStyle24.copyWith(
                                    fontSize: 16, color: MyColor.whiteColor),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                MyImage.addIcon,
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                                height: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Introduction",
                    style: regularTextStyle24.copyWith(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Introduction is the  Introduction is the Introduction Introdu ctionis the Introduction Introduction Introduction Introduction Introduction is the Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 14, color: MyColor.grayColor.withAlpha(150)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 550,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(
                            image: AssetImage(MyImage.runningMan),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Introduction",
                    style: regularTextStyle24.copyWith(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Introduction is the  Introduction is the Introduction Introdu ctionis the Introduction Introduction Introduction Introduction Introduction is the Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction ",
                    style: regularTextStyle24.copyWith(
                        fontSize: 14, color: MyColor.grayColor.withAlpha(150)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                     GridView.builder(
                       itemCount: 8,
                       shrinkWrap: true,
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 10,
                           childAspectRatio: 5,
                         ),
                         itemBuilder: (context, index) {
                           return Row(
                             children: [
                               Checkbox(
                                 activeColor: MyColor.splashBacColorTwo,
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(5)),
                                 value: isSelect,
                                 onChanged: (value) {
                                   setState(() {
                                     isSelect = value!;
                                   });
                                 },
                               ),
                               const SizedBox(
                                 width: 10,
                               ),
                               Text(
                                 checkBox[index]["text"],
                                 style: regularTextStyle24.copyWith(fontSize: 14),
                               ),
                             ],
                           );
                         },),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColor),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: MyColor.whiteColor)),
                          child: Text(
                            "Go Pro",
                            style: regularTextStyle24.copyWith(
                                fontSize: 16, color: MyColor.whiteColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Unlocked Full Article!",
                          style: regularTextStyle24.copyWith(
                              fontSize: 24, color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 54,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RouteHelper.communityPageFour);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(MyColor.whiteColor),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Go Pro Now!",
                                  style: regularTextStyle24.copyWith(
                                      color: MyColor.splashBacColor,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage(MyImage.star),
                                  color: MyColor.splashBacColor,
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
