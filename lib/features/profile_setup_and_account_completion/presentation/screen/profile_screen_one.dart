import 'package:dotted_border/dotted_border.dart';
import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenOne extends StatefulWidget {
  const ProfileScreenOne({super.key});

  @override
  State<ProfileScreenOne> createState() => _ProfileScreenOneState();
}

final List<Map<String, dynamic>> items = [
  {"image": MyImage.dollImage},
  {"image": MyImage.dollImage},
  {"image": MyImage.dollImage}
];

int selectIndex = 1;

class _ProfileScreenOneState extends State<ProfileScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
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
                          color: MyColor.grayColor.withAlpha(50),
                        ),
                        child: SvgPicture.asset(MyImage.backIcon),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Assessment",
                      style: regularTextStyle24.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        bool isSelect = index == selectIndex;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: isSelect
                                  ? MyColor.splashBacColor
                                  : MyColor.borderColor,
                            ),
                            child: Image(
                              image: AssetImage(items[index]["image"]),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Select Your Avater",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.grayColor, fontSize: 30),
                ),
                Text(
                  "We have 23 custom premade avatars, or you can upload profile locally",
                  textAlign: TextAlign.center,
                  style: regularTextStyle18.copyWith(
                    color: MyColor.grayColor,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                DottedBorder(
                    padding: const EdgeInsets.all(25),
                    strokeWidth: 2,
                    borderType: BorderType.RRect,
                    color: MyColor.grayColor,
                    radius: const Radius.circular(10),
                    dashPattern: const [
                      5,
                    ],
                    child: Image(
                      image: AssetImage(MyImage.uploadIcn),
                      height: 25,
                      width: 25,
                      color: MyColor.grayColor,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "or Upload from local File",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.grayColor, fontSize: 20),
                ),
                Text(
                  "Max 5,mb formate,jpg,png ",
                  style: regularTextStyle18.copyWith(
                      color: MyColor.grayColor.withAlpha(100), fontSize: 16),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.profileScreenTwo);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(MyColor.blackColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.arrowRight,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
