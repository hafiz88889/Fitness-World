import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/diet_nutritio_screen/presentation/widget/instruction_process_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_text_style.dart';

class DietNutritionPageEleven extends StatefulWidget {
  const DietNutritionPageEleven({super.key});

  @override
  State<DietNutritionPageEleven> createState() =>
      _DietNutritionPageElevenState();
}

List<String> items = [
  "Fresh Mixed green",
  "Grilled chicken marinated breast strips",
  "Cherry tomatoes, halved",
  "Black beans, rinsed and drained",
  "Crumbled queso fresco or feta cheese",
];
bool isSelect = false;
bool isCompleted = true;
bool isActive = false;

List<Map<String, dynamic>> gallery = [
  {
    "color": MyColor.splashBacColor.withAlpha(50),
    "iconColor": MyColor.splashBacColor
  },
  {
    "color": MyColor.splashBacColorTwo.withAlpha(50),
    "iconColor": MyColor.splashBacColorTwo
  },
  {
    "color": MyColor.beguniColor.withAlpha(50),
    "iconColor": MyColor.beguniColor
  },
  {
    "color": MyColor.beguniColor.withAlpha(50),
    "iconColor": MyColor.beguniColor
  },
];

class _DietNutritionPageElevenState extends State<DietNutritionPageEleven> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 250,
            backgroundColor: MyColor.splashBacColor,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage(MyImage.plateImageSix),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.whiteColor.withAlpha(250)),
                child: SvgPicture.asset(
                  MyImage.backIcon,
                  colorFilter:
                      ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: MyColor.whiteColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.splashBacColor.withAlpha(40),
                      ),
                      child: Text(
                        "Salad & Vegetables",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.splashBacColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "North Texas Salad With Nutmeg & Radish",
                    textAlign: TextAlign.center,
                    style: regularTextStyle24.copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        MyImage.fireIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.splashBacColor, BlendMode.srcIn),
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "30min",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.grayColor),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset(
                        MyImage.watchIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.splashBacColorTwo, BlendMode.srcIn),
                        height: 25,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "215kcal",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.grayColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor,
                    ),
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      labelStyle: regularTextStyle24.copyWith(
                          color: MyColor.whiteColor),
                      unselectedLabelColor: MyColor.grayColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.blackColor,
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.grayColor,
                              spreadRadius: 3,
                            )
                          ]),
                      tabs: const [
                        Text("Details"),
                        Text("Recipe"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Overview",
                    style: regularTextStyle24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Indulge in the vibrate flavors of the Lone Star State with our North Texas Salad This delightful creation captures the essence of Tex-Mex cuisine wherever you are!",
                    textAlign: TextAlign.start,
                    style: regularTextStyle24.copyWith(
                        fontSize: 16, color: MyColor.grayColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Ingredients",
                    style: regularTextStyle24,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length,
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
                              }),
                          Text(
                            items[index],
                            style: regularTextStyle24.copyWith(
                                fontSize: 14, color: MyColor.grayColor),
                          )
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Galleries",
                    style: regularTextStyle24,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: gallery.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(25),
                          margin: const EdgeInsets.only(right: 10),
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: gallery[index]["color"],
                          ),
                          child: SvgPicture.asset(
                            MyImage.cameraIcon,
                            colorFilter: ColorFilter.mode(
                                gallery[index]["iconColor"], BlendMode.srcIn),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Instructions",
                    style: regularTextStyle24,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InstructionProcessWidget(
                    title1: "Prep Veggies",
                    title2: "Dice tomatoes chop cucumber and slice radishes finely set aside",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.whiteColor,
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Create Dressing",
                    title2:
                        "Whisk olive oil balsamic vinegar honey and a pinch of nutmeg for a flavorful dressing",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.whiteColor,
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Toss & Garnish ",
                    title2:
                        "combine veggies in a bowl drizzle with dressing and toss gently Garnis with herbs",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.splashBacColor.withAlpha(60),
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Serve & Enjoy",
                    title2: "Plate vibrant North Texas Salad and savor the delightful combination of flavors",
                    orangeColor: MyColor.grayColor,
                    whiteColor: MyColor.splashBacColor.withAlpha(50),
                    lineColor: MyColor.grayColor,
                    image: MyImage.fireIcon,
                    imageColor: MyColor.borderColor,
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.dietNutritionPageTwelve);
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
                            "Add Meal ",
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
          ),
        ],
      )),
    );
  }
}
