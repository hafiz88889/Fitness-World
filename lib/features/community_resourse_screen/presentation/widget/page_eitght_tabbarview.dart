import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PageEitghtTabbarview extends StatelessWidget {
  const PageEitghtTabbarview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
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
                      Expanded(
                        child: Column(
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
                      ),
                      PopupMenuButton(
                        onSelected: (String value) {
                          if(value == "Edit"){
                            Navigator.pushNamed(context, RouteHelper.communityPageTen);
                          } else if
                          (value=="Save"){
                            Navigator.pushNamed(context, RouteHelper.errorPageSix);
                          } else if(value=="Delete"){
                            Navigator.pushNamed(context, RouteHelper.errorPageSix);
                          }
                        },
                        color: MyColor.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        itemBuilder: (BuildContext context)=>[
                        PopupMenuItem(value: "Edit",child: Text("Edit"),),
                        PopupMenuItem(value: "Save",child: Text("Save"),),
                        PopupMenuItem(value: "Delete",child: Text("Delete"),),
                        ],
                        icon: Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 20,),
                      )
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
                      Image(image: AssetImage(MyImage.messageIcon),color: MyColor.splashBacColor,height: 15,),
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
                      Expanded(
                        child: Column(
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
                      ),
                      PopupMenuButton(
                        onSelected: (value){
                          print("$value");
                        },
                        color: MyColor.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        itemBuilder: (BuildContext context)=>[
                          PopupMenuItem(value: "Edit",child: Text("Edit"),),
                          PopupMenuItem(value: "Save",child: Text("Save"),),
                          PopupMenuItem(value: "Delete",child: Text("Delete"),),
                        ],
                        icon: Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 20,),
                      )
                    ],

                  ),
                  const SizedBox(height: 15,),
                  const Text("Hey Sandow Farm Just Crushed my morning workout a killer Hitt session to kickstart the day Feeling the burn in the best way possible ",textAlign: TextAlign.start,),
                  const SizedBox(height: 10,),
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
                      Image(image: AssetImage(MyImage.messageIcon),color: MyColor.splashBacColor,height: 15,),
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
                      Expanded(
                        child: Column(
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
                      ),
                      PopupMenuButton(
                        onSelected: (String value) {
                          if(value == "Edit"){
                            Navigator.pushNamed(context, RouteHelper.errorPageSix);
                          } else if
                          (value=="Save"){
                          Navigator.pushNamed(context, RouteHelper.errorPageSix);
                          } else if(value=="Delete"){
                            Navigator.pushNamed(context, RouteHelper.errorPageSix);
                          }
                        },
                        color: MyColor.whiteColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        itemBuilder: (BuildContext context)=>[
                          PopupMenuItem(value: "Edit",child: Text("Edit"),),
                          PopupMenuItem(value: "Save",child: Text("Save"),),
                          PopupMenuItem(value: "Delete",child: Text("Delete"),),
                        ],
                        icon: Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 20,),
                      )
                    ],

                  ),
                  const SizedBox(height: 15,),
                  const Text("Hey Sandow Farm Just Crushed my morning workout a killer Hitt session to kickstart the day Feeling the burn in the best way possible ",textAlign: TextAlign.start,),
                  const SizedBox(height: 10,),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                      Image(image: AssetImage(MyImage.messageIcon),color: MyColor.splashBacColor,height: 15,),
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

          ],
        ),
      ),
    );
  }
}
