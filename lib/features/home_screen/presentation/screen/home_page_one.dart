import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/diet_nutriton_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/fitness_metrics_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/fitness_resource_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/virtual_ai_widget.dart';
import 'package:fitnessworld/features/home_screen/presentation/widget/work_out_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageOne extends StatefulWidget {
  const HomePageOne({super.key});

  @override
  State<HomePageOne> createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImage.wallPaperImage),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jun 25 2025",
                          style: regularTextStyle18.copyWith(
                              fontSize: 12, color: MyColor.whiteColor),
                        ),
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
                              child: Image(
                                image: AssetImage(MyImage.notifictionIcon),
                                height: 25,
                                width: 25,
                                color: MyColor.whiteColor,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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
                              "Hello Makisi!",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 30, color: MyColor.whiteColor),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  MyImage.backGroundFullPlus,
                                  height: 15,
                                  width: 15,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.whiteColor, BlendMode.srcIn),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "88% Healthy",
                                  style: regularTextStyle18.copyWith(
                                      fontSize: 14, color: MyColor.whiteColor),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: MyColor.splashBacColorTwo,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Pro",
                                  style: regularTextStyle18.copyWith(
                                      fontSize: 14, color: MyColor.whiteColor),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Transform.rotate(
                          angle: -3,
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
       Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
       child: Column(
         children: [
           const SizedBox(
             height: 30,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Fitness Metrics",
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
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 GestureDetector(
                   onTap:(){
                     Navigator.pushNamed(
                         context, RouteHelper.homeScreenTwo);
           },
                   child: FitnessMetricsWidget(
                       title1: "Score",
                       image: MyImage.backGroundFullPlus,
                       image2: MyImage.graphIcon,
                       title2: "88%",
                       color: MyColor.splashBacColor),
                 ),
                 FitnessMetricsWidget(
                     title1: "Hydration",
                     image: MyImage.fireIcon,
                     image2: MyImage.graphLineIcon,
                     title2: "781 ml",
                     color: MyColor.splashBacColorTwo),
                 FitnessMetricsWidget(
                     title1: "Score",
                     image: MyImage.backGroundFullPlus,
                     image2: MyImage.graphIcon,
                     title2: "88%",
                     color: MyColor.splashBacColor),
               ],
             ),
           ),
           const SizedBox(
             height: 30,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   Text(
                     "Worksouts ",
                     style: regularTextStyle24.copyWith(fontSize: 20),
                   ),
                   Text(
                     "(25)",
                     style: regularTextStyle24.copyWith(
                         fontSize: 20, color: MyColor.grayColor.withAlpha(150)),
                   ),
                 ],
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
             height: 8,
           ),
           const WorkOutWidget(),
           const SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Diet & Nutrition",
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
           const SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 DietNutritonWidget(),
                 DietNutritonWidget(),
                 DietNutritonWidget(),
               ],
             ),
           ),
           const SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Activities",
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
           Image(
             image: AssetImage(MyImage.chartImage),
             width: double.infinity,
           ),
           const SizedBox(
             height: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Virtual AI Couch ",
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
           const SizedBox(height: 10,),
           const VirtualAiWidget(),
           const SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Fitness & Resource ",
                 style: regularTextStyle24.copyWith(fontSize: 20),
               ),
               Text("See All",
                   style: regularTextStyle18.copyWith(
                       fontSize: 16, color: MyColor.splashBacColor)),
             ],
           ),
           const SizedBox(height: 10,),
           FitnessResourceWidget(
               color: MyColor.grayColor,
               image: MyImage.ladyProfile,
               title: "Stretching and Recovery \nSession",
               title1: "Mai Sakurajima Sensei"),
           FitnessResourceWidget(
               color: MyColor.grayColor,
               image: MyImage.ladyProfile,
               title: "Stretching and Recovery \nSession",
               title1: "Mai Sakurajima Sensei"),
           FitnessResourceWidget(
               color: MyColor.grayColor,
               image: MyImage.ladyProfile,
               title: "Stretching and Recovery \nSession",
               title1: "Mai Sakurajima Sensei"),
         ],
       ),
       )
      ],
              ),
      ),
    );
  }
}
