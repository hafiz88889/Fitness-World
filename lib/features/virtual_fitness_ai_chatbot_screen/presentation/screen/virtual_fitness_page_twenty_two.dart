import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VirtualFitnessPageTwentyTwo extends StatefulWidget {
  const VirtualFitnessPageTwentyTwo({super.key});

  @override
  State<VirtualFitnessPageTwentyTwo> createState() => _VirtualFitnessPageTwentyTwoState();
}
class _VirtualFitnessPageTwentyTwoState extends State<VirtualFitnessPageTwentyTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
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
            const SizedBox(height: 100,),
            Image(image: AssetImage(MyImage.dumm),height: 300,width: double.infinity,fit: BoxFit.cover,),
            const SizedBox(height: 30,),
            Text(
              "Opps, Out of Token!",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(
                  fontSize: 30),
            ),
            const SizedBox(height: 20,),
            Text(
              "Update your Premium Level and enjoy unlimited feature",textAlign: TextAlign.center,
              style: regularTextStyle18.copyWith(
                  fontSize: 16,color: MyColor.grayColor),
            ),
            const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
            const SizedBox(width: 5,),
            Text("Limited Chat",style: regularTextStyle24.copyWith(color: MyColor.grayColor,fontSize: 16),),
            const SizedBox(width: 20,),
          Image(image: AssetImage(MyImage.energyIcon),height: 25,width: 25,color: MyColor.grayColor,),
            const SizedBox(width: 5,),
            Text("Fast Response",style: regularTextStyle24.copyWith(color: MyColor.grayColor,fontSize: 16),),
          ],
        ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentythree);
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
          ],
        ),
      ),
    );
  }
}
