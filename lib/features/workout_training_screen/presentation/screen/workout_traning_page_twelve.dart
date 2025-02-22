import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class WorkoutTraningPageTwelve extends StatelessWidget {
  const WorkoutTraningPageTwelve({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>itemList=[
      {"image":MyImage.joggingIcon,"text1":"Do Proper Stretching","text2":"Do 10m of Proper Stretching"},
      {"image":MyImage.weightLiftIcon,"text1":"Master Core Stretching","text2":"25m Core Stretching for you"},
      {"image":MyImage.leafIcon,"text1":"Relaxation & Yoga","text2":"Do yoga at least 1x/week"},
      {"image":MyImage.wakingIcon,"text1":"Do Proper Stretching","text2":"Do 10m of Proper Stretching"},
      {"image":MyImage.joggingIcon,"text1":"Do Proper Stretching","text2":"Do 10m of Proper Stretching"},
      {"image":MyImage.joggingIcon,"text1":"Do Proper Stretching","text2":"Do 10m of Proper Stretching"},

    ];
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 35,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.borderColor),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.grayColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  Text("AI Suggestions",style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor),
                    child: SvgPicture.asset(
                      MyImage.settingIcn,
                      colorFilter: ColorFilter.mode(
                          MyColor.grayColor, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(MyImage.blackGymManTwo),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.joggingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.skatingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child: SvgPicture.asset(
                            MyImage.bikingIcon,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: MyColor.whiteColor, width: 2)),
                          child:Text("12+",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,)
                        ),
                        )
                      ],
                    ),
                    const SizedBox(height: 120,),
                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Correct Your Form",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 24),),
                           Row(
                             children: [
                               SvgPicture.asset(MyImage.copyIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,width: 20,),
                               const SizedBox(width: 10,),
                               Text("3 Step",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                               const SizedBox(width: 20,),
                               SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,width: 20,),
                               const SizedBox(width: 10,),
                               Text("+8 Score",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 16),),
                             ],
                           )
                         ],
                       ),
                       const Spacer(),
                       Transform.rotate(angle: -1,
                       child: SvgPicture.asset(MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 40,width: 40,),
                       )
                     ],
                   )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Suggestions",style: regularTextStyle24.copyWith(fontSize: 22),),
                  Text("See All",style: regularTextStyle18.copyWith(color: MyColor.splashBacColor,fontSize: 16),),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RouteHelper.workoutTrainingPageThirteen);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.borderColor
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColor.whiteColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(itemList[index]["image"],colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),height: 20,width: 20,),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(itemList[index]["text1"],style: regularTextStyle24,),
                                const SizedBox(height: 8,),
                                Text(itemList[index]["text2"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16)),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },)
            ],
          ),
        ),
      ),
    );
  }
}
