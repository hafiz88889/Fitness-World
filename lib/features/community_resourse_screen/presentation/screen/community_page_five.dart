import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommunityPageFive extends StatefulWidget {
  const CommunityPageFive({super.key});

  @override
  State<CommunityPageFive> createState() => _CommunityPageFiveState();
}
int selectIndex=1;
final List<Map<String,dynamic>>selectItem=[
  {"image":MyImage.backGroundFullPlus,"text":"Healthcare"},
  {"image":MyImage.weightLiftIcon,"text":"Fitness"},
  {"image":MyImage.settingIcn,"text":"General"},
  {"image":MyImage.one,"text":"Weight Lost"},
  {"image":MyImage.copyIcon,"text":"Recipe"},
  {"image":MyImage.two,"text":"Nutrition"},
  {"image":MyImage.resturentIcon,"text":"Diet"},
  {"image":MyImage.five,"text":"Meditation"},
  {"image":MyImage.emojiIconOne,"text":"AI/ML"},
  {"image":MyImage.one,"text":"Weight Lost"},


];
class _CommunityPageFiveState extends State<CommunityPageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.splashBacColorTwo.withAlpha(30)),
                    child: Text(
                      "Community Post",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.splashBacColorTwo, fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Text("Add New Post",style: regularTextStyle24.copyWith(fontSize: 30),),
              Text("Select Post Category",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor.withAlpha(150)),),
              const SizedBox(height: 20,),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: selectItem.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 85,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    bool isSelect=index==selectIndex;
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectIndex=index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: isSelect?MyColor.grayColor.withAlpha(100):Colors.transparent,
                                spreadRadius: isSelect?5:0,
                              )
                            ],
                            color: isSelect?MyColor.blackColor:MyColor.borderColor),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:isSelect?MyColor.borderColor.withAlpha(150):MyColor.whiteColor),
                              child: SvgPicture.asset(
                                  selectItem[index]["image"],
                                colorFilter: ColorFilter.mode(
                                    isSelect?MyColor.whiteColor:MyColor.grayColor.withAlpha(150), BlendMode.srcIn),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text(selectItem[index]["text"],style: regularTextStyle24.copyWith(fontSize: 14,color:isSelect?MyColor.whiteColor:MyColor.grayColor.withAlpha(150)),)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, RouteHelper.communityPageSix);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
