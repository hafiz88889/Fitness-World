import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PersonalizePageFourteen extends StatefulWidget {
  const PersonalizePageFourteen({super.key});

  @override
  State<PersonalizePageFourteen> createState() => _PersonalizePageFourteenState();
}
int isMin=0;
int isMax=250;
final TextEditingController _controller=TextEditingController();
class _PersonalizePageFourteenState extends State<PersonalizePageFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
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
                const SizedBox(width: 20,),
                Text(
                  "Review",
                  style: regularTextStyle24.copyWith(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.borderColor
                  ),
                  child:SvgPicture.asset(MyImage.five)
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.borderColor,
                    image: DecorationImage(image: AssetImage(MyImage.ladyProfile,),fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.borderColor
                  ),
                  child: Image(image: AssetImage(MyImage.shareIcon),height: 25,color: MyColor.grayColor,),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Md Hafizur Rahman",style: regularTextStyle24.copyWith(fontSize: 24),),
              const SizedBox(width: 8,),
              Image(image: AssetImage(MyImage.verifyIcon),color: MyColor.splashBacColorTwo,height: 20,)
            ],),

            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(MyImage.star),color: MyColor.splashBacColor,height: 40,),
                const SizedBox(width: 10,),
                Image(image: AssetImage(MyImage.star),color: MyColor.splashBacColor,height: 40,),
                const SizedBox(width: 10,),
                Image(image: AssetImage(MyImage.star),color: MyColor.splashBacColor,height: 40,),
                const SizedBox(width: 10,),
                Image(image: AssetImage(MyImage.star),color: MyColor.splashBacColor,height: 40,),
                const SizedBox(width: 10,),
                Image(image: AssetImage(MyImage.star),color: MyColor.grayColor,height: 40,),
              ],
            ),
            const SizedBox(height: 50,),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.grayColor.withAlpha(50),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          maxLength: isMax,
                          maxLines: null,
                          onChanged: (value){
                            setState(() {
                              isMin=value.length;
                            });
                          },
                          style: regularTextStyle24.copyWith(fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "Couch farnese was a joy ....",
                            hintStyle: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
                            counterText: "",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColor.grayColor.withAlpha(200)
                                ),
                                child: SvgPicture.asset(MyImage.arrowRoundLaft,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                              ),
                              const SizedBox(width: 10,),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: MyColor.grayColor.withAlpha(200)
                                  ),
                                  child: SvgPicture.asset(MyImage.arrowRoundRight,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(MyImage.copyIcon),
                              Text("$isMin/$isMax",style: regularTextStyle18.copyWith(
                                  fontSize: 16,fontWeight: FontWeight.w700,color: MyColor.blackColor.withAlpha(100)
                              ),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 56,
              child: ElevatedButton(onPressed: (){
               // Navigator.pushNamed(context, RouteHelper.profileScreenOne);
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.blackColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Submit Review",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor,),),
                      const SizedBox(width: 10,),
                      SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    ],
                  )
              ),
            ),
          ],
        ),
      )),
    );
  }
}
