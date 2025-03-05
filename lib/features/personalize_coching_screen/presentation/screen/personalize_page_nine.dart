import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/features/personalize_coching_screen/presentation/widget/book_couch_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PersonalizePageNine extends StatefulWidget {
  const PersonalizePageNine({super.key});

  @override
  State<PersonalizePageNine> createState() => _PersonalizePageNineState();
}

String selectItem = "VISA";
List<String> category = ["VISA", "Master Card", "Paypal", "Google Pay"];

class _PersonalizePageNineState extends State<PersonalizePageNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: MyColor.grayColor.withAlpha(50),
                        ),
                        child: SvgPicture.asset(MyImage.backIcon),
                      ),
                    ),
                    Text(
                      "Book Couch",
                      style: regularTextStyle24.copyWith(fontSize: 24),
                    ),
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
                        child: SvgPicture.asset(MyImage.settingIcn),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: MyColor.whiteColor.withAlpha(50),
                                  spreadRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.orangeColor),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            MyImage.rightMark,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                          ),
                        )),
                    Container(
                      width: 80,
                      height: 4,
                      color: MyColor.splashBacColor,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.all(5),
                      //padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: MyColor.whiteColor, spreadRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: MyColor.splashBacColor),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          MyImage.rightMark,
                          colorFilter: ColorFilter.mode(
                              MyColor.whiteColor, BlendMode.srcIn),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 4,
                      color: MyColor.splashBacColor,
                    ),
                    Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: MyColor.splashBacColor.withAlpha(50),
                                  spreadRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.splashBacColor),
                        child: Image(
                          image: AssetImage(MyImage.dotIcon),
                          height: 30,
                          width: 30,
                          color: MyColor.whiteColor,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColor.borderColor),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(MyImage.ladyProfile),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.whiteColor),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: MyColor.grayColor.withAlpha(50)),
                              child: Text(
                                "Human",
                                style:
                                    regularTextStyle18.copyWith(fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Md Hafiz",
                                  style: regularTextStyle24,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Image(
                                  image: AssetImage(MyImage.verifyIcon),
                                  color: MyColor.blackColor,
                                  height: 20,
                                  width: 20,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
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
                                  "4.5",
                                  style: regularTextStyle18.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  image: AssetImage(MyImage.userIconTwo),
                                  height: 20,
                                  color: MyColor.splashBacColorTwo,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "21 Client",
                                  style: regularTextStyle18.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Transform.rotate(
                          angle: -3,
                          child: SvgPicture.asset(
                            MyImage.backIcon,
                            height: 25,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter Coupon",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyColor.hintColor.withAlpha(0)),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color:
                                      MyColor.splashBacColorTwo.withAlpha(50),
                                  width: 7,
                                )),
                            border: const OutlineInputBorder(),
                            filled: true,
                            fillColor: MyColor.hintColor.withAlpha(20),
                            hintText: "GKDKU23UIOH",
                            hintStyle: regularTextStyle18.copyWith(
                                color: MyColor.hintColor),
                            prefixIcon: Icon(
                              Icons.check_box,
                              color: MyColor.splashBacColorTwo,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.splashBacColorTwo,
                      ),
                      child: Text(
                        "Use",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.whiteColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Payment Method",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.borderColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        dropdownColor: MyColor.whiteColor,
                        icon: Transform.rotate(
                          angle: -1.5,
                          child: SvgPicture.asset(MyImage.backIcon),
                        ),
                        value: selectItem,
                        isExpanded: true,
                        items: category.map((String selected) {
                          return DropdownMenuItem(
                            value: selected,
                            child: Text(selected),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectItem = newValue!;
                          });
                        }),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Summery",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColor.borderColor),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(MyImage.ladyProfile),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.whiteColor),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: MyColor.grayColor.withAlpha(50)),
                              child: Text(
                                "Human",
                                style:
                                    regularTextStyle18.copyWith(fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Md Hafiz",
                                  style: regularTextStyle24,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Image(
                                  image: AssetImage(MyImage.verifyIcon),
                                  color: MyColor.blackColor,
                                  height: 20,
                                  width: 20,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
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
                                  "4.5",
                                  style: regularTextStyle18.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  image: AssetImage(MyImage.userIconTwo),
                                  height: 20,
                                  color: MyColor.splashBacColorTwo,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "21 Client",
                                  style: regularTextStyle18.copyWith(
                                      color: MyColor.grayColor, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Change",
                        style: regularTextStyle24.copyWith(
                            fontSize: 16, color: MyColor.splashBacColorTwo),
                      )
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage(MyImage.calenderIcon),
                      color: MyColor.grayColor,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Nov 25, 2025",
                      style: regularTextStyle24.copyWith(
                          fontSize: 16, color: MyColor.grayColor),
                    )),
                    Text(
                      "Change",
                      style: regularTextStyle24.copyWith(
                          fontSize: 16, color: MyColor.splashBacColorTwo),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      MyImage.watchIcon,
                      colorFilter:
                          ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),
                      height: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "11:AM PST",
                      style: regularTextStyle24.copyWith(
                          fontSize: 16, color: MyColor.grayColor),
                    )),
                    Text(
                      "Change",
                      style: regularTextStyle24.copyWith(
                          fontSize: 16, color: MyColor.splashBacColorTwo),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Payment Details",
                  style: regularTextStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1x couching Package(30 minutes)',
                      style: regularTextStyle24.copyWith(
                          fontSize: 16,
                          color: MyColor.grayColor.withAlpha(100)),
                    ),
                    Text(
                      '\$250.00',
                      style: regularTextStyle24.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Admin fee',
                      style: regularTextStyle24.copyWith(
                          fontSize: 16,
                          color: MyColor.grayColor.withAlpha(100)),
                    ),
                    Text(
                      '\$45.00',
                      style: regularTextStyle24.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Coupon Discount',
                      style: regularTextStyle24.copyWith(
                          fontSize: 16,
                          color: MyColor.grayColor.withAlpha(100)),
                    ),
                    Text(
                      '-\$15.00',
                      style: regularTextStyle24.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grand Total',
                      style: regularTextStyle24.copyWith(
                          fontSize: 16,
                          color: MyColor.grayColor.withAlpha(100)),
                    ),
                    Text(
                      '-\$87.52',
                      style: regularTextStyle24.copyWith(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColor.blackColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$87.52",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.whiteColor, fontSize: 24),
                          ),
                          Text(
                            "Total Price",
                            style: regularTextStyle24.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(50))),
                              barrierColor: MyColor.orangeColor,
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return const FractionallySizedBox(
                                  heightFactor: 0.6,
                                  child: BookCouchBottomsheet(),
                                );
                              });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColor.splashBacColor,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Checkout",
                                style: regularTextStyle24.copyWith(
                                    color: MyColor.whiteColor),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image(
                                image: AssetImage(MyImage.cartIcon),
                                height: 20,
                                color: MyColor.whiteColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
