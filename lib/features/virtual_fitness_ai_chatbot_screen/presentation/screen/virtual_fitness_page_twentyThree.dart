import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class VirtualFitnessPageTwentythree extends StatefulWidget {
  const VirtualFitnessPageTwentythree({super.key});

  @override
  State<VirtualFitnessPageTwentythree> createState() =>
      _VirtualFitnessPageTwentythreeState();
}
final List<Map<String,dynamic>>items=[
  {"text": "Pro","text2":"\$5.99/mo"},
  {"text": "Enterprise","text2":"\$9.99/mo"},
];
bool isSelect=false;
int selectIndex=0;
class _VirtualFitnessPageTwentythreeState
    extends State<VirtualFitnessPageTwentythree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColor.grayColor.withAlpha(50),
                          ),
                          child: SvgPicture.asset(MyImage.backIcon),
                        ),
                      ),
                    ),
                  ],
                ),
            
               ShaderMask(
                 shaderCallback: (Rect bound){
                   return LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: [Colors.transparent,
                     MyColor.whiteColor,
                     ]
                   ).createShader(bound);
                 },
                 blendMode: BlendMode.hardLight,
                 child:  Image(
                   image: AssetImage(MyImage.gymManSeven),
                   height: 350,
                   width: double.infinity,
                   fit: BoxFit.cover,
                 ),
               ),
                Text("Go Pro Full Unlimited",style: regularTextStyle24.copyWith(fontSize: 30),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("yearly",style: regularTextStyle18.copyWith(fontSize: 14),),
                    Switch(
                      activeColor: MyColor.splashBacColorTwo,
                        thumbColor:WidgetStateProperty.all(MyColor.whiteColor),
                        value: isSelect,
                        onChanged: (value){
                          setState(() {
                            isSelect=value;
                          });
                        }),
            
                    Text("Monthly",style: regularTextStyle18.copyWith(fontSize: 14),),
                  ],
                ),
                const SizedBox(height: 20,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context,index){
                    bool isSelected = index == selectIndex;
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectIndex=index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: isSelected? MyColor.splashBacColor:MyColor.borderColor,
                            boxShadow: [
                              BoxShadow(
                                color: isSelected?MyColor.splashBacColor.withAlpha(100):Colors.transparent,
                                spreadRadius: isSelected?5:0,
                              )
                            ],
                            border: Border.all(color: isSelected?MyColor.splashBacColor:MyColor.grayColor.withAlpha(0),width: isSelected? 5:0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index]["text"],style: regularTextStyle24.copyWith(color: isSelected?MyColor.whiteColor:MyColor.blackColor,fontSize: 18),
                            ),
                            Text(
                              items[index]["text2"],style: regularTextStyle24.copyWith(color: isSelected?MyColor.whiteColor:MyColor.blackColor,fontSize: 18),
                            ),
                          ],
                        ),
                      ),
            
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteHelper.dietNutritititioPageOne);
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
                            "Go Pro Now",
                            style: regularTextStyle18.copyWith(
                                color: MyColor.whiteColor, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image(image: AssetImage(MyImage.star,),color: MyColor.whiteColor,height: 25,width: 25,)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Text("Privacy Policy Terms and Condition",style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),)
              ],
            ),
          ),
      ),
    );
  }
}
