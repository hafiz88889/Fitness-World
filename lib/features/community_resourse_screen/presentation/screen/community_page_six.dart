import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class CommunityPageSix extends StatefulWidget {
  const CommunityPageSix({super.key});

  @override
  State<CommunityPageSix> createState() => _CommunityPageSixState();
}
final List<Map<String,dynamic>>postType=[
  {"image":MyImage.questionMarkIcon,"text":"Poll"},
  {"image":MyImage.playIcon,"text":"Video"},
  {"image":MyImage.questionMarkIcon,"text":"Gallery"},
  {"image":MyImage.filterIcon,"text":"Poll"},
];
final List<Map<String,dynamic>>addMatrix=[
  {"image":MyImage.emojiIconOne,},
  {"image":MyImage.fireIcon,},
  {"image":MyImage.one,},
  {"image":MyImage.five,},
  {"image":MyImage.four,},

];
bool switchSelect=false;
bool switchSelectTwo=false;
int isMax=250;
int isMin=0;
int selectIndex=1;
int selectIndexTwo=1;
final TextEditingController _controller=TextEditingController();
class _CommunityPageSixState extends State<CommunityPageSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(13),
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
              const SizedBox(height: 20,),
              Text("Post Content",style: regularTextStyle24,),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColor.borderColor
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(MyImage.ladyProfile),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("MD Hafizur Rahman",style: regularTextStyle24.copyWith(fontSize: 16),),
                                const SizedBox(width: 8,),
                                Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 15,)
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(MyImage.copyIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),),
                                const SizedBox(width: 5,),
                                Text("25 Post",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                                const SizedBox(width: 20,),
                                SvgPicture.asset(MyImage.backGroundFullPlus,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),height: 20,),
                                const SizedBox(width: 5,),
                                Text("58%",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Container(
                      height: 150,
                      padding: const EdgeInsets.all(15),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: MyColor.whiteColor,
                        border: Border.all(color: MyColor.blackColor),
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.grayColor.withAlpha(150),
                            spreadRadius: 5,
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              maxLines: null,
                              maxLength: isMax,
                              onChanged: (value){
                                setState(() {
                                  isMin=value.length;
                                },
                                );
                              },
                              style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.grayColor.withAlpha(150)),
                              decoration: InputDecoration(
                                hintText: "EVERYONE STAY CLAM You wont belive this i had AI Chat with Couch S systme",
                                hintStyle: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(100)),
                                border:InputBorder.none,
                                counterText: "",
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(MyImage.voiceIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),height: 20,),
                                  const SizedBox(width: 10,),
                                  SvgPicture.asset(MyImage.cameraIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),height: 20,)

                                ],
                              ),
                              Row(
                                children: [
                                  Text("$isMin/$isMax",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Post Type",style: regularTextStyle24.copyWith(fontSize: 20),),
                  Text("See All ",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.splashBacColor),),
                ],
              ),
                const SizedBox(height: 15,),
              SizedBox(
                height: 75,
                child: ListView.builder(
                  itemCount: postType.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool isSelect=index==selectIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectIndex=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10,left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelect?MyColor.blackColor:MyColor.borderColor,
                          boxShadow: [
                            BoxShadow(
                              color: isSelect?MyColor.grayColor.withAlpha(150):Colors.transparent,
                              spreadRadius: isSelect?4:0,
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage(postType[index]["image"]),color:isSelect?MyColor.whiteColor: MyColor.grayColor.withAlpha(150),height: 20,),
                          const SizedBox(width: 10,),
                          Text(postType[index]["text"],style: regularTextStyle24.copyWith(color: isSelect?MyColor.whiteColor:MyColor.grayColor.withAlpha(150),fontSize: 16),)
                        ],
                      ),
                    ),
                  );
                },),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add Matrix",style: regularTextStyle24.copyWith(fontSize: 20),),
                 Image(image: AssetImage(MyImage.threeDotMenuIcon),color: MyColor.grayColor.withAlpha(150),height: 20,)
                ],
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 77,
                child: ListView.builder(
                  itemCount: addMatrix.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool isSelect=index==selectIndexTwo;
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectIndexTwo=index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10,top: 10,bottom: 10,left: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isSelect?MyColor.splashBacColorTwo:MyColor.borderColor,
                            boxShadow: [
                              BoxShadow(
                                color: isSelect?MyColor.splashBacColorTwo.withAlpha(50):Colors.transparent,
                                spreadRadius: isSelect?4:0,
                              )
                            ]
                        ),
                        child:SvgPicture.asset(addMatrix[index]["image"],colorFilter: ColorFilter.mode(isSelect?MyColor.whiteColor:MyColor.grayColor.withAlpha(150), BlendMode.srcIn),height: 40,)
                      ),
                    );
                  },),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hide From Community?",style: regularTextStyle24),
                        Text("This Post Will be Private",style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 14)),
                      ],
                    ),
                  ),
                  Switch(
                    inactiveThumbColor: MyColor.whiteColor,
                    activeTrackColor: MyColor.splashBacColor,
                    activeColor: MyColor.whiteColor,
                    value: switchSelect,
                    onChanged: (value){
                      setState(() {
                        switchSelect=value;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Boost Post?",style: regularTextStyle24),
                        Text("Only available for Pro Members",style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 14)),
                      ],
                    ),
                  ),
                  Switch(
                    inactiveThumbColor: MyColor.whiteColor,
                    activeTrackColor: MyColor.splashBacColor,
                    activeColor: MyColor.whiteColor,
                    value: switchSelect,
                    onChanged: (value){
                      setState(() {
                        switchSelect=value;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
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
                                      color: Colors.green.withAlpha(30)
                                  ),
                                  child: SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.greenColor, BlendMode.srcIn),height: 25,)
                              ),
                              const SizedBox(height: 32,),
                              Text("Post Successful!",textAlign: TextAlign.center, style: regularTextStyle24.copyWith(fontSize: 24)),
                              const SizedBox(height: 10,),
                              Text("You have Successfully Submit you post Lets see it now Shall", textAlign: TextAlign.center,style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor)),
                              const SizedBox(height: 20,),
                              SizedBox(
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, RouteHelper.communityPageSeven);
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
                                        "See My Post",
                                        style: regularTextStyle24.copyWith(
                                            color: MyColor.whiteColor, fontSize: 16),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(MyImage.arrowRight,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                                    ],
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
              ),
            ],
          ),
        ),
      )),
    );
  }
}
