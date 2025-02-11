import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenTwo extends StatefulWidget {
  const ProfileScreenTwo({super.key});

  @override
  State<ProfileScreenTwo> createState() => _ProfileScreenTwoState();
}

final List<String> accountTypes = [
  "Regular",
  "Coach",
  "Nutritionist",
  "Nutritionist"
];
int selectIndex = 1;
double weidth=3.0;
String selectedGender = "Trans Female";
List<String> genders = ["Male", "Female", "Non-Binary", "Trans Female", "Trans Male"];

class _ProfileScreenTwoState extends State<ProfileScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: MyColor.blackColor),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 50),
                        child: Row(
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
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Profile Set up",
                              style: regularTextStyle24.copyWith(
                                  fontSize: 20, color: MyColor.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 140,
                  right: 140,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteHelper.screenEighteen);
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                color: MyColor.whiteColor,
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                    image: AssetImage(MyImage.ladyProfile),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            top: 100,
                            left: 30,
                            right: 30,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteHelper.screenSixteen);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: MyColor.whiteColor, width: 5),
                                    color: MyColor.splashBacColor),
                                child: Image(
                                  image: AssetImage(MyImage.editIcon),
                                  height: 10,
                                  width: 10,
                                  color: MyColor.whiteColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            GlobalTextFieldWidget(
              title: "Full Name",
              hintText: "Makise Kurisu",
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(
                  image: AssetImage(MyImage.userIcon),
                  height: 5,
                  width: 5,
                ),
              ),
              suffix: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image(
                  image: AssetImage(MyImage.editIcon),
                  height: 10,
                  width: 10,
                  color: MyColor.grayColor.withAlpha(100),
                ),
              ),
            ),
            GlobalTextFieldWidget(
              title: "Email Address",
              hintText: "email ",
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.emailIcon),
              ),
              suffix: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image(
                  image: AssetImage(MyImage.editIcon),
                  height: 10,
                  width: 10,
                  color: MyColor.grayColor.withAlpha(100),
                ),
              ),
            ),
            GlobalTextFieldWidget(
              title: "Password",
              hintText: "*********",
              prefix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.lockIcon),
              ),
              suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.visibilityIcon),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account Type",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(accountTypes.length, (index) {
                      bool isSelected = index == selectIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(15),
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
                              Text(accountTypes[index],
                                  style: regularTextStyle18.copyWith(
                                      color: isSelected
                                          ? MyColor.whiteColor
                                          : MyColor.blackColor)),
                              const SizedBox(width: 8),
                              Image(
                                image: AssetImage(isSelected
                                    ? MyImage.radioButtonFilled
                                    : MyImage.radioButtonNotFilled),
                                height: 25,
                                width: 25,
                                color: isSelected
                                    ? MyColor.whiteColor
                                    : MyColor.blackColor,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Weidth",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                Slider(
                  value: weidth,
                  min: 1,
                  max: 5,
                  divisions: 2,
                  label: weidth.toString(),
                  activeColor: MyColor.splashBacColor,
                  onChanged: (value) {
                    setState(() {
                      weidth = value;
                    });
                  },
                ),
                Text(
                  "Gender",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColor.borderColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: MyColor.whiteColor,
                      icon: Transform.rotate(angle: -1.5,
                        child: SvgPicture.asset(MyImage.backIcon),
                      ),
                      value: selectedGender,
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedGender = newValue!;
                        });
                      },
                      items: genders.map((String gender) {
                        return DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.borderColor
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage(MyImage.locationIcon),height: 20,width: 20,),
                      const SizedBox(width: 10,),
                      Text("Tokyo.Japan",style: regularTextStyle18.copyWith(color: MyColor.grayColor),)
                    ],
                  ),
                )
              ],
            ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(12),
      child:  SizedBox(
        height: 54,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteHelper.profileScreenThree);
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
                MyImage.arrowRight,colorFilter: ColorFilter.mode(MyColor.whiteColor , BlendMode.srcIn),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
