import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';
import '../../../../core/utils/route_name.dart';

class CommunityPageTen extends StatelessWidget {
  const CommunityPageTen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: MyColor.whiteColor
                ),
                child: Column(
                  children: [
                    Container(
                        height:64,
                        width: 64,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.withAlpha(30)
                        ),
                        child:Image(image: AssetImage(MyImage.deleteIcon),color: MyColor.redColor,height: 20,)
                    ),
                    const SizedBox(height: 32,),
                    Text("Delete Post?",textAlign: TextAlign.center, style: regularTextStyle24.copyWith(fontSize: 24)),
                    const SizedBox(height: 10,),
                    Text("are you sure to delete this post This operation cannot be undoed!", textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                        //  Navigator.pushNamed(context, RouteHelper.communityPageSeven);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            WidgetStateProperty.all(MyColor.borderColor),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "No Don't Delete",
                              style: regularTextStyle24.copyWith(
                                  color: MyColor.blackColor, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                           SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),),
                        ]
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteHelper.notificationPageOne);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            WidgetStateProperty.all(MyColor.redColor),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Yes Delete",
                              style: regularTextStyle24.copyWith(
                                  color: MyColor.whiteColor, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image(image: AssetImage(MyImage.deleteIcon),color: MyColor.whiteColor,height: 20,)                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: MyColor.whiteColor,
            );
          },);
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
              "Continue",
              style: regularTextStyle24.copyWith(
                  color: MyColor.whiteColor, fontSize: 16),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
            )
          ],
        ),
      ),
    );

  }
}
