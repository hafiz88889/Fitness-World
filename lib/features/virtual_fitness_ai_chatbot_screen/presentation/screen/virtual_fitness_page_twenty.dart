import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class VirtualFitnessPageTwenty extends StatefulWidget {
  const VirtualFitnessPageTwenty({super.key});

  @override
  State<VirtualFitnessPageTwenty> createState() => _VirtualFitnessPageTwentyState();
}
final TextEditingController _controller=TextEditingController();
int isMin=0;
int isMax=250;

int selectIndex=1;
List<String>titleList=[
  "GPT-4",
  "AI LLM",
  "Card 3",
  "Sandaw Special",
  "AI Score",
  "Sandaw Special",
];
class _VirtualFitnessPageTwentyState extends State<VirtualFitnessPageTwenty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColor.blackColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(100),
                      ),
                      child: SvgPicture.asset(
                        MyImage.backIcon,
                        colorFilter: ColorFilter.mode(
                            MyColor.whiteColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Chat Chatting",
                    style: regularTextStyle24.copyWith(
                        fontSize: 24, color: MyColor.whiteColor),
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AI LLM",style: regularTextStyle24,),
                const SizedBox(height: 10,),
                SizedBox(
                  height:60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titleList.length,
                    itemBuilder: (context, index) {
                    bool isSelect=index==selectIndex;
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectIndex=index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isSelect?MyColor.splashBacColor:MyColor.borderColor,
                            boxShadow: [
                              BoxShadow(
                                color: isSelect?MyColor.grayColor.withAlpha(50):Colors.transparent,
                                spreadRadius: isSelect?4:0,
                              )
                            ]
                        ),
                        child: Text(titleList[index],style: regularTextStyle24.copyWith(color: isSelect?MyColor.whiteColor:MyColor.blackColor),),
                      ),
                    );
                  },),
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Text("AI Adgusment Memory",style: regularTextStyle24,),
                    const SizedBox(width: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.splashBacColorTwo.withAlpha(30),
                      ),
                      child: Text("BETA",style: regularTextStyle24.copyWith(color: MyColor.splashBacColorTwo,fontSize: 16),),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyColor.borderColor
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _controller,
                        maxLines: null,
                        maxLength: isMax,
                        onChanged: (value){
                          setState(() {
                            isMin=value.length;
                          });
                        },
                        style: regularTextStyle18,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "I can’t do more than 22 squats",
                            hintStyle: regularTextStyle18.copyWith(color: MyColor.grayColor.withAlpha(100)),
                            counterText: ""
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(MyImage.copyIcon),
                          Text("$isMin/$isMax",style: regularTextStyle18.copyWith(
                              fontSize: 16,fontWeight: FontWeight.w700,color: MyColor.blackColor.withAlpha(100)
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                Row(
                  children: [
                    Text("Custom AI Response",style: regularTextStyle24,),
                    const SizedBox(width: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.splashBacColorTwo.withAlpha(30),
                      ),
                      child: Text("BETA",style: regularTextStyle24.copyWith(color: MyColor.splashBacColorTwo,fontSize: 16),),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColor.borderColor
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _controller,
                        maxLines: null,
                        maxLength: isMax,
                        onChanged: (value){
                          setState(() {
                            isMin=value.length;
                          });
                        },
                        style: regularTextStyle18,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "I can’t do more than 22 squats",
                            hintStyle: regularTextStyle18.copyWith(color: MyColor.grayColor.withAlpha(100)),
                            counterText: ""
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(MyImage.copyIcon),
                          Text("$isMin/$isMax",style: regularTextStyle18.copyWith(
                              fontSize: 16,fontWeight: FontWeight.w700,color: MyColor.blackColor.withAlpha(100)
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
            Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyOne);
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
                  "Save Setting",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.whiteColor, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
