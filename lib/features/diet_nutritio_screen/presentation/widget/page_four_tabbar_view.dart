import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PageFourTabbarView extends StatelessWidget {
  const PageFourTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>itemTwo=[
      {"image":MyImage.plateImageThree,"text1":"Fried Brocolli & Nuts ..",},
      {"image":MyImage.plateImageFour,"text1":"Salmo Meet With Sunny",},
      {"image":MyImage.plateImageThree,"text1":"Meta Meat Diet With Ox",},
      {"image":MyImage.plateImageFour,"text1":"Fride Brocilli",},
      {"image":MyImage.plateImageThree,"text1":"Fride Brocilli",},
    ];

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  "All Meal ",
                  style: regularTextStyle24.copyWith(fontSize: 20),
                ),
                const Spacer(),
                Text("Most Popular",
                    style: regularTextStyle18.copyWith(
                        fontSize: 16, color: MyColor.splashBacColor)),
                const SizedBox(width: 8,),
                Image(image: AssetImage(MyImage.wifiIcon),color: MyColor.splashBacColor,height: 15,width: 15,)
              ],
            ),
        
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemTwo.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(itemTwo[index]["image"]),fit: BoxFit.cover)
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(itemTwo[index]["text1"],style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 22),),
                            Image(image: AssetImage(MyImage.threeDotMenuIcon),height: 25,color: MyColor.whiteColor,)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 25,),
                            const SizedBox(width: 8,),
                            Text("215kcal",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                            const SizedBox(width: 20,),
                            SvgPicture.asset(MyImage.watchIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,),
                            const SizedBox(width: 8,),
                            Text("30min",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 16),),
        
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircularProgressIndicator(
                                  backgroundColor: MyColor.whiteColor.withAlpha(110),
                                  value: 0.3,
                                  strokeAlign: -1,
                                  valueColor:AlwaysStoppedAnimation(MyColor.whiteColor),
                                  strokeWidth: 10,
                                ),
                                const SizedBox(width:10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("25g",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 20),),
                                    Text("Protein",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 19),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircularProgressIndicator(
                                  backgroundColor: MyColor.whiteColor.withAlpha(110),
                                  value: 0.3,
                                  strokeAlign: -1,
                                  valueColor:AlwaysStoppedAnimation(MyColor.whiteColor),
                                  strokeWidth: 10,
                                ),
                                const SizedBox(width:10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("25g",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 20),),
                                    Text("Fat",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 19),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircularProgressIndicator(
                                  backgroundColor: MyColor.whiteColor.withAlpha(110),
                                  strokeAlign: -1,
                                  value: 0.3,
                                  valueColor:AlwaysStoppedAnimation(MyColor.whiteColor),
                                  strokeWidth: 10,
                                ),
                                const SizedBox(width:10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("25g",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 20),),
                                    Text("Crabs",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 19),),
                                  ],
                                ),
                              ],
                            ),
        
                          ],
                        )
                      ],
                    )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
