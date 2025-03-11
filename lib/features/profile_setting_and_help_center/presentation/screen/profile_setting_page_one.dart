import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProfileSettingPageOne extends StatelessWidget {
  const ProfileSettingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>items=[
      {"image":MyImage.cardioIcon,"text":"17y","text2":"Current Age","color":MyColor.redColor},
      {"image":MyImage.one,"text":"68kg","text2":"Weight","color":MyColor.greenColor},
      {"image":MyImage.fireIcon,"text":"978kcal","text2":"Daily Intake","color":MyColor.splashBacColorTwo},
    ];
    
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 220,
                padding: const EdgeInsets.only(top: 35,left: 14,right: 15,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(35),
                  ),
                  image: DecorationImage(image: AssetImage(MyImage.dumbleImage),fit: BoxFit.cover)
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.whiteColor.withAlpha(120),
                  ),
                  child: Image(image: AssetImage(MyImage.editIcon),color: MyColor.whiteColor,height: 20,),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.whiteColor.withAlpha(120),
                    ),
                    child: SvgPicture.asset(MyImage.settingIcn,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),height: 20,)
                ),
              ),
              Positioned(
                top: 170,
                left: 140,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteHelper.profileSettingPageTwo);
                  },
                  child: Container(
                    height: 100,width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(MyImage.blackGymLady,),fit: BoxFit.cover)
                      ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 55,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 12),
         child: Column(
           children: [
             Text("Md Hafizur Rahman",style: regularTextStyle24.copyWith(fontSize: 22),),
             const SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image(image: AssetImage(MyImage.locationIcon),color: MyColor.grayColor,height: 20,),
                 const SizedBox(width: 8,),
                 Text("Tokoyo Japan",style: regularTextStyle24.copyWith(fontSize: 14),),
                 const SizedBox(width: 25,),
                 Image(image: AssetImage(MyImage.userIconTwo),color: MyColor.grayColor,height: 20,),
                 const SizedBox(width: 8,),
                 Text("Basic Member",style: regularTextStyle24.copyWith(fontSize: 14),)
               ],
             ),
             const SizedBox(height: 20,),
             Image(image: AssetImage(MyImage.graphImage),height: 280,),
             const SizedBox(height: 20,),
             GridView.builder(
               shrinkWrap: true,
               itemCount: items.length,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 3,
                 mainAxisSpacing: 10,
                 crossAxisSpacing: 10,
               ),
               itemBuilder: (context, index) {
                 return Container(
                   padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: MyColor.borderColor
                   ),
                   child:  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SvgPicture.asset(items[index]["image"],colorFilter: ColorFilter.mode(items[index]["color"], BlendMode.srcIn),height: 25,),
                       const SizedBox(height: 10,),
                       Text(items[index]["text"],style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 24),),
                       Text(items[index]["text2"],style: regularTextStyle24.copyWith(color: MyColor.grayColor.withAlpha(150),fontSize: 16),),

                     ],
                   ),
                 );

               },)
           ],
         ),
         )
        ],
      ),
    );
  }
}
