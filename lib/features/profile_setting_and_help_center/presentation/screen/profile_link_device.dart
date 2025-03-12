import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileLinkDevice extends StatelessWidget {
  const ProfileLinkDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
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
                      colorFilter:
                          ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),
                    ),
                  ),
                ),
                Text(
                  "Linked Device",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.blackColor, fontSize: 24),
                ),
              ],
              ),
              const SizedBox(height: 50,),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MyImage.watchImage), fit: BoxFit.cover)),
              ),
              const Spacer(),
              Text("Xaomi Watch 8",style: regularTextStyle24.copyWith(fontSize: 24),),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_box,color: MyColor.splashBacColorTwo,size: 18,),
                  const SizedBox(width: 8,),
                  Text("Connected",style: regularTextStyle24.copyWith(fontSize: 14),),
                  const SizedBox(width: 20,),
                Image(image: AssetImage(MyImage.energyIcon),color: MyColor.orangeColor,height: 20,),
                  const SizedBox(width: 8,),
                  Text("98%",style: regularTextStyle24.copyWith(fontSize: 14),)
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.blackColor
                    ),
                    child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:Image(image: AssetImage(MyImage.filterIcon,),height: 20,width: 20,color: MyColor.whiteColor,)
                    ),
                  ),
                  Container(
                                width: 120,
                                height: 120,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: MyColor.blackColor,
                                  border: Border.all(color: MyColor.whiteColor.withAlpha(120),width: 5)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(25.0),
                                    child:Image(image: AssetImage(MyImage.linkImage,),height: 20,width: 20,color: MyColor.whiteColor,)
                                )
                            ),
                  Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.blackColor
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:SvgPicture.asset(MyImage.fireIcon,)
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
