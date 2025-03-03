import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/diet_nutritio_screen/presentation/widget/instruction_process_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import '../../../../core/utils/my_text_style.dart';

class PersonalizePageFour extends StatefulWidget {
  const PersonalizePageFour({super.key});

  @override
  State<PersonalizePageFour> createState() => _PersonalizePageFourState();
}
double _value = 2;
List<Map<String,dynamic>>items=[
  {"image":MyImage.gymManFour,"headingText":"Md Hafizur Rahman","ratting":"4.5","days":"2d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
  {"image":MyImage.gymManFour,"headingText":"Mr John","ratting":"3.5","days":"4d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
  {"image":MyImage.gymManSeven,"headingText":"Mr Kobir","ratting":"4.2","days":"5d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
];
class _PersonalizePageFourState extends State<PersonalizePageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImage.gymLadyThree),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(40),
                      )),
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
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.whiteColor.withAlpha(100),
                            ),
                            child: SvgPicture.asset(
                              MyImage.settingIcn,
                              colorFilter: ColorFilter.mode(
                                  MyColor.whiteColor, BlendMode.srcIn),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 205,
                  left: 60,
                  right: 60,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.blackColor,
                        ),
                        child: Image(
                          image: AssetImage(MyImage.hertIcon),
                          height: 25,
                          color: MyColor.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.splashBacColor,
                        ),
                        child: Image(
                          image: AssetImage(MyImage.hertIcon),
                          height: 25,
                          color: MyColor.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.blackColor,
                        ),
                        child: Image(
                          image: AssetImage(MyImage.calenderIcon),
                          height: 25,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.grayColor)),
                        child: Text(
                          "Professional ",
                          style: regularTextStyle24,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.grayColor)),
                        child: Text(
                          "Human",
                          style: regularTextStyle24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Md Hafizur Rahman",
                        style: regularTextStyle24.copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage(MyImage.verifyIcon),
                        height: 20,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyColor.borderColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "8y",
                              style: regularTextStyle24.copyWith(fontSize: 24),
                            ),
                            Text(
                              "Experience",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 16, color: MyColor.grayColor),
                            ),
                          ],
                        ),
                        Container(
                            width: 2,
                            height: 80,
                            color: MyColor.grayColor.withAlpha(150)),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "88+",
                              style: regularTextStyle24.copyWith(fontSize: 24),
                            ),
                            Text(
                              "Client",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 16, color: MyColor.grayColor),
                            ),
                          ],
                        ),
                        Container(
                            width: 2,
                            height: 80,
                            color: MyColor.grayColor.withAlpha(150)),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "4.5",
                              style: regularTextStyle24.copyWith(fontSize: 24),
                            ),
                            Text(
                              "Rating",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 16, color: MyColor.grayColor),
                            ),
                          ],
                        ),
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
                        "Review",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Text(
                        "See All",
                        style: regularTextStyle24.copyWith(
                            fontSize: 16, color: MyColor.splashBacColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 320,
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.borderColor),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(items[index]["image"]),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[index]["headingText"],
                                        style: regularTextStyle24,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image(
                                            image: AssetImage(MyImage.star),
                                            height: 20,
                                            color: MyColor.orangeColor,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                           items[index]["ratting"],
                                            style: regularTextStyle24.copyWith(
                                                fontSize: 16,
                                                color: MyColor.grayColor),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            items[index]["days"],
                                            style: regularTextStyle24.copyWith(
                                                fontSize: 16,
                                                color: MyColor.grayColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Image(
                                    image: AssetImage(MyImage.threeDotMenuIcon),
                                    height: 25,
                                    color: MyColor.grayColor,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                items[index]["description"],maxLines: 3,overflow: TextOverflow.ellipsis,
                                style: regularTextStyle24.copyWith(
                                    fontSize: 14, color: MyColor.grayColor),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Bio",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        height: 25,
                        color: MyColor.grayColor,
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    MyText.personalBio, maxLines: 5,overflow: TextOverflow.ellipsis, style: regularTextStyle24.copyWith(
                      fontSize: 14, color: MyColor.grayColor),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Coaching History",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenuIcon),
                        height: 25,
                        color: MyColor.grayColor,
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.borderColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.backGroundFullPlus,height: 30,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                            const SizedBox(width: 10,),
                            Expanded(
                                child: Text("Regular Coaching",style: regularTextStyle24.copyWith(fontSize: 16),)),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: MyColor.grayColor)
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(MyImage.calenderIcon),
                                    height: 15,
                                    width: 15,
                                    color: MyColor.blackColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "January",
                                    style: regularTextStyle18.copyWith(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Transform.rotate(
                                      angle: -1.5, child: SvgPicture.asset(MyImage.backIcon))
                                ],
                              ),
                            ),
                          ],
                        ),
                        FlutterSlider(
                          values: [_value],
                          max: 2,
                          min: 0,
                          handler: FlutterSliderHandler(
                            child: Container(
                              height: 20,
                              width: 2,
                              color: MyColor.splashBacColorTwo,
                            ),
                          ),
                          trackBar: FlutterSliderTrackBar(
                            activeTrackBar: BoxDecoration(
                             color: MyColor.splashBacColorTwo,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            inactiveTrackBar: BoxDecoration(
                              color:MyColor.grayColor.withAlpha(100),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          hatchMark: FlutterSliderHatchMark(
                            labels: [
                              FlutterSliderHatchMarkLabel(percent: 0, label: const Text("Jan25")),
                              FlutterSliderHatchMarkLabel(percent: 25, label: const Text("Jan25")),
                              FlutterSliderHatchMarkLabel(percent: 50, label: const Text("Jan31")),

                            ],
                          ),
                          onDragging: (handlerIndex, lowerValue, upperValue) {
                            setState(() {
                              _value = lowerValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Experience",
                        style: regularTextStyle24.copyWith(fontSize: 22),
                      ),
                      Text(
                        "See All",
                        style: regularTextStyle24.copyWith(
                            fontSize: 16, color: MyColor.splashBacColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  InstructionProcessWidget(
                    title1: "Certification Achievement",
                    title2: "ACE Fitness Certificate with a focus on Strength and Conditioning",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.whiteColor,
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Unity Hospital",
                    title2:
                    "Led Successful group fitness classes and personalized training with a 90% client sucess rate",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.whiteColor,
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Online Coaching Pioneer (2 Years)",
                    title2:
                    "Launched and managed virtual training programs exparding client globally with integrated tech support",
                    orangeColor: MyColor.splashBacColor,
                    whiteColor: MyColor.splashBacColor.withAlpha(60),
                    lineColor: MyColor.splashBacColor,
                    image: MyImage.rightMark,
                    imageColor: MyColor.whiteColor,
                  ),
                  InstructionProcessWidget(
                    title1: "Current Cardio Specialist",
                    title2: "Learn about the doctors leadeship and administrative roles at linity Heath systm",
                    orangeColor: MyColor.grayColor,
                    whiteColor: MyColor.splashBacColor.withAlpha(50),
                    lineColor: MyColor.grayColor,
                    image: MyImage.fireIcon,
                    imageColor: MyColor.borderColor,
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.blackColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("\$97.99",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                            Text("1x Coaching Fee",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, RouteHelper.personalizePageFive);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.splashBacColor,
                            ),
                            child: Row(
                              children: [
                                Text("Book",style: regularTextStyle24.copyWith(color: MyColor.whiteColor),),
                                Image(image: AssetImage(MyImage.calenderIcon),height: 20,color: MyColor.whiteColor,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
